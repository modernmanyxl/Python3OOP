import socket

客户端 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
客户端.connect(("localhost", 2401))
print("接收到的:{0}".format(客户端.recv(1024)))
客户端.close()
