import socket

def 回复(客户端):
    回复字符串 = input("Enter a value here: ")
    客户端.send(bytes(回复字符串, "utf8"))
    #send()接收上面输入的字符串并且在另一端将字符串传递到接收socket
    客户端.close()


#装饰器模式允许我们包装一个提供核心功能的对象更改此功能的其他对象。任何使用修饰对象的对象都会与它交互的方式与未修饰的方式完全相同(即修饰对象与核心对象相同)。

服务端 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# 这里应该是实例化"服务端"成对象
服务端.bind(("localhost", 2401))
# "服务端"对象绑定到指定的端口
服务端.listen(1)
# "服务端"对象开始监听指定数量的??

try:
    while True:
        客户端, 地址 = 服务端.accept()
        回复(客户端)
finally:
    服务端.close()
