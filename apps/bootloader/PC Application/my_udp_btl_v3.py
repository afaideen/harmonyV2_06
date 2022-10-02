
#ref https://github.com/camilstaps/AN1388-linux/blob/b1c214f595369a5528f6e0471cda381e2d769968/programmer.py#L288

import socket, os, sys
# import crc16
from argparse import ArgumentParser, RawTextHelpFormatter
from binascii import hexlify, unhexlify
from abc import ABCMeta, abstractmethod




CMD_READ_VERSION = "\x01"
CMD_ERASE = "\x02"
CMD_FLASH_DATA = "\x03"
CMD_VERIFY_CS = "\x04"
CMD_JUMP_APP = "\x05"
data = "\x02\x00\x00\x04\x1D\x00\xDD"
# payload, len = crc16.send_request(CMD_FLASH_DATA + data)


xxx = "this is string example....wow!!!"
print("Length of the string: ", len(xxx) )



# These tables are excatly the same, except the [-2] element. It depends on the
# version of the bootloader library you are using on your PIC MCU.
CRC_TABLE = [
    [0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
     0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1c1, 0xf1ef],
    [0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
     0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef]]

DEBUG_LEVEL = 0
CRC_INDEX = 1
# Should be equal to Device Erase size
ERASE_SIZE        = 16384

class DataStream:
    """Abstract class for interfaces to the chip"""
    __metaclass__ = ABCMeta

    global DEBUG_LEVEL # pylint: disable=global-statement

    def __init__(self):
        pass

    def read_response(self, command):
        """Retrieve response from the chip"""
        response = self.sub_read_response()

        if DEBUG_LEVEL >= 2:
            print('<', hexlify(response))

        if response[0] != ord('\x01') or response[-1] != ord('\x04'):
            raise IOError('Invalid response from bootloader')

        # response1 = unescape(response[1:-1])
        response1 = unescape(response[1:-3])

        # Verify SOH, EOT and command fields
        if response1[0] != ord(command):
            raise IOError('Unexpected response type from bootloader')
        # x = response1.decode()
        x = convertByte2Str(response1)
        y = crc16(x)
        crc_calculated = chr(ord(y[0])) + chr(ord(y[1]))
        crc_original = chr(response[-3:-1][0]) + chr(response[-3:-1][1])
        # if crc16(response1[:-2]) != response1[-2:]:
        if crc_calculated != crc_original:
            raise IOError('Invalid CRC from bootloader')

        # return response1[1:-2]
        if len(response1) == 1:
            return response1
        return response1[1:]


    def send_request(self, command, txcount = None):
        """Build and send request"""
        command1 = escape(command)
        # printX(command1)
        # if '\x03' in command[2:] and ord(command[0]) == 3 and txcount >= 1:
        if '\x03' in command[2:] and ord(command[0]) == 3:
            #if upload only
            command1 = command1[0:2] + command1[2:].replace('\x03', '\x10\x03')
            # printX(command1)
        # if ord(command[0]) == 4:
        #     print(convert(command1))
        #     crc_cmd1 = escape(crc16(command1))
        #     print(convert(crc_cmd1))
        crc = crc16(command)
        request = '\x01' + command1 + escape(crc) + '\x04'
        result = convert(request)
        # printX(request)
        self.sub_send_request(request)

        if DEBUG_LEVEL >= 2:
            print('>', hexlify(request))

        return len(request)

    @abstractmethod
    def sub_read_response(self):
        """Implementation-specific method to retrieve data from the chip"""
        pass

    @abstractmethod
    def sub_send_request(self, request):
        """Implementation-specific method to send data to the chip"""
        pass

class UDPStream(DataStream):
    """UDP interface"""

    def __init__(self, udp_addr, udp_port, timeout):
        self.udp_addr = udp_addr
        self.udp_port = udp_port
        self.timeout = timeout
        self.soc = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.soc.settimeout(self.timeout)

        super(UDPStream, self).__init__()

    def sub_read_response(self):
        try:
            response, _ = self.soc.recvfrom(1024)
            return response
        except Exception:
            raise IOError('Bootloader response timed out')

    def sub_send_request(self, request):
        # request = str.encode(request)
        data = convertStr2Byte(request)

        self.soc.sendto(data, (self.udp_addr, self.udp_port))

def convert(payload):
    r = ''
    for c in payload:
        x = hex(ord(c))
        r = r + "\\" + x
    return r

def get_checksum_str(payload):
    o = ''
    for c in payload:
        x = hex(ord(c))
        o = o + "%s" % (x[2:])

    return o

def crc16_(data):
    """Calculate the CRC-16 for a string"""
    i = 0
    crc = 0

    for byte in data:
        i = (crc >> 12) ^ (ord(byte) >> 4)
        # crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4)
        crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4) & 0xffff
        i = (crc >> 12) ^ (ord(byte) >> 0)
        # crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4)
        crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4) & 0xffff

    crc = crc & 0xFFFF
    return crc

def crc16(data):
    """Calculate the CRC-16 for a string"""
    i = 0
    crc = 0
    for byte in data:
        i = (crc >> 12) ^ (ord(byte) >> 4)
        # crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4)
        crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4) & 0xffff
        i = (crc >> 12) ^ (ord(byte) >> 0)
        # crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4)
        crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4) & 0xffff

    return chr(crc & 0xff) + chr((crc >> 8) & 0xff)

def crc16_len(data, len):
    """Calculate the CRC-16 for a string"""
    i = 0
    crc = 0
    for byte in data:
        if len == 0:
            break

        i = (crc >> 12) ^ (ord(byte) >> 4)
        crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4)
        # crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4) & 0xffff
        i = (crc >> 12) ^ (ord(byte) >> 0)
        crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4)
        # crc = CRC_TABLE[CRC_INDEX][i & 0x0f] ^ (crc << 4) & 0xffff
        len = len - 1
        crc = crc & 0xffff

    return chr(crc & 0xff) + chr((crc >> 8) & 0xff)

def parse_args():
    """Parse command line arguments"""
    pars = ArgumentParser(formatter_class=RawTextHelpFormatter)

    pars.add_argument(
        '-i', '--interface',
        help='Choose bootloader communication interface',
        choices=['uart', 'udp'],
        required=True)

    pars.add_argument(
        '-a', '--udp-addr',
        help='IP Address for UDP')
    pars.add_argument(
        '-n', '--udp-port',
        help='UDP port number',
        type=int, default=6234)

    pars.add_argument(
        '-p', '--port',
        help='Serial port to use')
    pars.add_argument(
        '-b', '--baud',
        help='Baudrate to the bootloader',
        type=int, default=115200)

    pars.add_argument(
        '-u', '--upload',
        help='Upload file to chip',
        metavar='firmware.hex')
    pars.add_argument(
        '-c', '--check',
        help='Check CRC of a memory block ADDR:SIZE\n'\
             '  ADDR - 32 bit start address (hex)\n'\
             '  SIZE - 32 bit block length in bytes',
        type=str, default='9d000000:000000ff',
        nargs='?')
    pars.add_argument(
        '-e', '--erase',
        help='Erase before upload',
        action='store_true')
    pars.add_argument(
        '-r', '--run',
        help='Run after upload',
        action='store_true')
    pars.add_argument(
        '-v', '--version',
        help='Read bootloader version',
        action='store_true')

    pars.add_argument(
        '-t', '--timeout',
        help='Timeout in seconds',
        type=float, default=1.0)
    pars.add_argument(
        '-D', '--debug',
        help='Debug level',
        type=int, default=0)

    pars.add_argument(
        '--my-version',
        action='version',
        version='%(prog)s ' + __version__)

    pars.add_argument(
        '--crc',
        help='CRC table',
        choices=['0', '1'],
        default=1)

    return pars.parse_args()

def escape(data):
    """Escape control characters"""
    data = data.replace('\x10', '\x10\x10')
    data = data.replace('\x01', '\x10\x01')
    # data = data.replace('\x03', '\x10\x03')
    data = data.replace('\x04', '\x10\x04')
    return data

def unescape(data):
    """Inverse of escape"""
    escaping = False
    record = ''
    for byte in list(data):
        if escaping:
            record += chr(byte)
            escaping = False
        elif chr(byte) == '\x10' or chr(byte) == '\x01' or chr(byte) == '\x04':
            escaping = True
        else:
            record += chr(byte)
    # record2 = str.encode(record)
    record2 = convertStr2Byte(record)
    return record2

def convertByte2Str(xbyte):
    m = ''
    for x in xbyte:
        m = m + chr(x)
    return m


def convertStr2Byte(d):
    m = bytearray()

    for c in d:
        m.append(ord(c))
    return m

def upload(conn_stream, filename):
    """Upload a hexfile"""
    data_size = 0
    count = 0
    data = bytearray()
    txcount, rxcount, txsize, rxsize = 0, 0, 0, 0
    crc = 0
    with open(filename) as hexfile:
        for line in hexfile:
            # Check Intel HEX format
            if len(line) < 7:
                raise IOError('Invalid record format')
            if DEBUG_LEVEL >= 1:
                print(line)
            # else:
            #     sys.stdout.write('.')
            #     sys.stdout.flush()
            # Convert from ASCII to hexdec

            v = unhexlify(line[1:-1])
            data.extend(v)
            data_size = data_size + len(v)
            # data_size = len(data)
            data_str = convertByte2Str(data)
            if count > 0 and \
                    (
                            count % 20 == 0 \
                        or ":0000" in line
                    ):
                print("sending data..%d\r\n" %(txcount))
                txsize += conn_stream.send_request('\x03' + data_str, txcount)
                response = conn_stream.read_response('\x03')
                rxsize += len(response) + 4
                txcount += 1
                rxcount += 1



                data = bytearray()
            count += 1
        print('*')
    return (txcount, txsize, rxcount, rxsize, data_size)

#------------------------------------------------------------------------------
def verbose(verb, text):
    if verb:
        print("\n" + text)

#------------------------------------------------------------------------------
def crc32_tab_gen():
    res = []

    for i in range(256):
        value = i

        for j in range(8):
            if value & 1:
                value = (value >> 1) ^ 0xedb88320
            else:
                value = value >> 1

        res += [value]

    return res

#------------------------------------------------------------------------------
def crc32(tab, data):
    crc = 0xffffffff

    for d in data:
        crc = tab[(crc ^ d) & 0xff] ^ (crc >> 8)

    return crc

# filename = "D:\\Microchip\harmony\\v3\\bootloader_apps_ethernet\\apps\\udp_live_update\\live_update_app\\firmware\\pic32mz_ef_curiosity_v2.X\\dist\\pic32mz_ef_curiosity_v2\\production\\pic32mz_ef_curiosity_v2.X.production.hex"
# filename = "D:\\harmony\\v3\\bootloader_apps_ethernet\\apps\\udp_bootloader\\test_app\\firmware\\pic32mx_eth_sk2.X\\dist\\pic32mx_eth_sk2\\production\\pic32mx_eth_sk2.X.production.hex"
filename = "D:\\github\\microchip\\harmonyV2_06\\apps\\bootloader\\LiveUpdate\\LiveUpdate_App\\firmware\\LiveUpdate_App.X\\dist\\pic32mz_curiosity_v2_udp_led3\\production\\LiveUpdate_App.X.production.hex"

# data = [(x) for x in open(filename, 'rb').read()]
# while len(data) % ERASE_SIZE > 0:
#     data += [0xff]
#
# crc32_tab = crc32_tab_gen()
# crc = crc32(crc32_tab, data)


def calculate_checksum(data):
    l = ['\xff'] * 4096 * 64


    data_ = data.split('\n')
    data_len = 0
    curr_len = 0
    v_ = ''
    low_addr = ''
    cnt = 0
    i = 0
    j = 0
    g = 0
    for d in data_:
        cnt = cnt + 1
        if len(d) == 0:
            E = 1
            break
        if ':0000' in d:
            E = 1
            continue

        if ':020000' in d:
            E = 1

            q = d[-6:-2]
            if q == '0000':
                low_addr = q
                # g = 1
            else:
                # g = 0
                if low_addr == '':
                    low_addr = '0000'
                hi_addr = q[2:]
                addr = int(hi_addr + low_addr, 16)
                E = 1
            continue

        addr1 = addr + int(d[3:7], 16) - 16
        # addr1 = addr1 - 16
        if addr1 < 0:
            E = 1

        v = unhexlify(d[9:-2])
        v_str = (convertByte2Str(v))

        for k in v_str:
            l[addr1] = k
            addr1 = addr1 + 1

        if addr1 >= curr_len:
            curr_len = addr1
        E = 1

    v_ = ''.join([str(elem) for elem in l])

    data_len = curr_len
    c = crc16_len(v_, data_len)
    x1 = hex(ord(c[0]))
    x2 = hex(ord(c[1]))
    hexcrc = c[0] + c[1]
    p = get_checksum_str(hexcrc).zfill(4)
    E = 1
    print("crc16: OX%s, len: %d" % (p, data_len))
    return p, data_len

with open(filename) as f:
    data = f.read()
    f.close()
crc, data_len = calculate_checksum(data)
crc_in_bytes = unhexlify(crc)
crc_in_str = (convertByte2Str(crc_in_bytes))


E = 1
def main():
    # conn_stream = UDPStream("192.168.1.11", 6234, 5)    #5s timeout   #pic32mz curiosity v2
    # conn_stream = UDPStream("192.168.100.11", 6234, 5)    #5s timeout   #pic32mx eth sk
    conn_stream = UDPStream("192.168.137.11", 6234, 15)    #5s timeout   #pic32mx eth sk



    print('Querying version..')
    conn_stream.send_request(CMD_READ_VERSION)
    version = conn_stream.read_response('\x01')
    print('Bootloader version: ' + hexlify(version).decode())

    print('Cmd Erase..')
    conn_stream.send_request(CMD_ERASE)
    r = conn_stream.read_response('\x02')

    print('Uploading..')
    upstats = upload(conn_stream, filename)
    print('Transmitted: %d packets (%d bytes), Received: %d packets (%d bytes)' % (upstats[0],upstats[1],upstats[2],upstats[3]))

    print('Verifying..')


    addr = '9d000010'
    # size = upstats[1]//16384
    size = "%x"%(data_len)
    # addr, size = '9d000000:000000ff'.split(':')
    addr, size = addr.zfill(8), size.zfill(8)
    str_addr = convertByte2Str(unhexlify(addr)[::-1])
    str_size = convertByte2Str(unhexlify(size)[::-1])

    conn_stream.send_request(CMD_VERIFY_CS + str_addr + str_size + crc_in_str)
    checksum = conn_stream.read_response('\04')
    checksum_pic_calculated = convertByte2Str(checksum)
    print('CRC @%s[%s]: %s' % (addr, size, hexlify(checksum)))

    if checksum_pic_calculated == crc_in_str:
        print('Checksum valid..Device jumping to app..')
        conn_stream.send_request(CMD_JUMP_APP)
        # r = conn_stream.read_response('\x05')
        print('Device bootloaded successful..')
    else:
        print('Checksum invalid..')
    E = 1


if __name__ == '__main__':
    main()