import socket
import gzip
from io import BytesIO


class 打印socket(object):
    
    def __init__(self, socket):
        self.socket = socket
    
    def send(self, data):
        print(f"Sending {data} to {self.socket.getpeername()[0]}.")
        self.socket.send(data)

    def close(self):
        self.socket.close()

class 压缩记录socket(object):
    def __init__(self, socket):
        self.socket = socket

    def send(self, data):
        buf = BytesIO()
        zipfile = gzip.GzipFile(fileobj=buf, mode="w")
        zipfile.write(data)
        zipfile.close()
        self.socket.send(buf.getvalue())

    def close(self):
        self.socket.close()


def 响应(客户端对象):
    response = input("Enter a value: ")
    客户端对象.send(bytes(response, "utf8"))
    客户端对象.close()


服务端 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
服务端.bind(("localhost", 2401))
服务端.listen(1)
try:
    while True:
        客户端对象, 地址 = 服务端.accept()
        #响应(客户端对象) #No decorator
        响应(打印socket(客户端对象))  # one decorator
        """
        if log_send:
            客户端对象 = 打印socket(客户端对象)
        if 客户端对象.getpeername()[0] in compress_hosts:
            客户端对象 = 压缩记录socket(客户端对象)
        响应(客户端对象)
        """
finally:
    服务端.close()

