#这个程序运行在lunix
#使用 "python3 文件名(带后缀)"直接运行
import asyncio
from contextlib import suppress

IP字典 = {
    b"facebook.com.": "173.252.120.6",
    b"yougov.com.": "213.52.133.246",
    b"wipo.int.": "193.5.93.80",
    b"dataquest.io.": "104.20.20.199",
}


def 查找dns(data):
    domain = b""
    pointer, part_length = 13, data[12]
    while part_length:
        domain += data[pointer : pointer + part_length] + b"."
        pointer += part_length + 1
        part_length = data[pointer - 1]

    ip = IP字典.get(domain, "127.0.0.1")

    return domain, ip


def 创建响应(data, ip):
    ba = bytearray
    packet = ba(data[:2]) + ba([129, 128]) + data[4:6] * 2
    packet += ba(4) + data[12:]
    packet += ba([192, 12, 0, 1, 0, 1, 0, 0, 0, 60, 0, 4])
    for x in ip.split("."):
        packet.append(int(x))
    return packet


class DNS协议(asyncio.DatagramProtocol):
    def connection_made(self, transport):
        self.transport = transport

    def datagram_received(self, data, addr):
        print("从{}接收请求".format(addr[0]))
        domain, ip = 查找dns(data)
        print(
            "发送IP{}给{}到{}".format(
                domain.decode(), ip, addr[0]
            )
        )
        self.transport.sendto(创建响应(data, ip), addr)


loop = asyncio.get_event_loop()
transport, protocol = loop.run_until_complete(
    loop.create_datagram_endpoint(
        DNS协议, local_addr=("127.0.0.1", 4343)
    )
)
print("DNS Server running")

with suppress(KeyboardInterrupt):
    loop.run_forever()
transport.close()
loop.close()
