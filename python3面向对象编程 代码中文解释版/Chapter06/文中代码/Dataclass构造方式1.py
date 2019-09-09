# 6.Dataclass
from dataclasses import make_dataclass
Dataclass类名 = make_dataclass("Dataclass类名", ["参数1名字", "参数2名字", "参数3名字", "参数4名字"])
Dataclass对象 = Dataclass类名("参数1值", 177.46, 参数3名字=178.67, 参数4名字=175.79)
print("以下打印Dataclass对象数据#--------------------")
print(Dataclass对象)
print("以下读取Dataclass对象数据#--------------------")
print(Dataclass对象.参数2名字)
print("以下修改Dataclass对象数据")
Dataclass对象.参数2名字 = 178.25
print(Dataclass对象)

