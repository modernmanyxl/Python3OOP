#这个程序运行在lunix
#这个例子是UDP模式
#使用 "python3 文件名(带后缀)"直接运行
import asyncio
from contextlib import suppress

IP字典 = {
    b"facebook.com.": "173.252.120.6",
    b"yougov.com.": "213.52.133.246",
    b"wipo.int.": "193.5.93.80",
    b"dataquest.io.": "104.20.20.199",
}
#这个字典建立了domain(域)到IPv4地址的映射.

def 查找dns(data):
    """从二进制DNS查询包中提取信息"""
    domain = b""
    指针, part_length = 13, data[12]
    while part_length:
        domain += data[指针 : 指针 + part_length] + b"."
        指针 += part_length + 1
        part_length = data[指针 - 1]

    ip = IP字典.get(domain, "127.0.0.1")

    return domain, ip


def 创建响应(data, ip):
    """针对二进制DNS查询创建响应"""
    ba = bytearray
    packet = ba(data[:2]) + ba([129, 128]) + data[4:6] * 2
    packet += ba(4) + data[12:]
    packet += ba([192, 12, 0, 1, 0, 1, 0, 0, 0, 60, 0, 4])
    for x in ip.split("."):
        packet.append(int(x))
    return packet
    #这个是即将要发送的packet?


class DNS协议(asyncio.DatagramProtocol):

    def connection_made(self, transport):
        self.transport = transport

    def datagram_received(self, data, addr):
        """当在接收到某些数据报时被调用.这里应该就是创建协程的地方"""
        domain, ip = 查找dns(data)
        print(
            "发送domain:'{}'对应的IP:'{}'到地址:'{}'".format(
                domain.decode(), ip, addr[0]
            )
        )
        self.transport.sendto(创建响应(data, ip), addr)



循环 = asyncio.get_event_loop()
transport, protocol = 循环.run_until_complete(
    循环.create_datagram_endpoint(
        DNS协议, local_addr=("127.0.0.1", 4343)
    )
)
print("DNS Server running")

with suppress(KeyboardInterrupt):
    循环.run_forever()
transport.close()
循环.close()
