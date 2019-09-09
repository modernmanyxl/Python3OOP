from dataclasses import dataclass
from pprint import pprint

@dataclass(order=True)
class Dataclass类名:
    属性1名字: str = "默认值"
    # 注意1:str型数据不能在实例化的时候用 <属性名 = "">的形式,否则报错
    # 注意2:比较的时候,这个属性的值必须相同
    属性2名字: int = 0
    属性3名字: float = 0

Dataclass对象_MIN = Dataclass类名("名字")
Dataclass对象_MID = Dataclass类名("名字", 1)
Dataclass对象_MAX = Dataclass类名("名字", 2, 2.2)
print(Dataclass对象_MIN < Dataclass对象_MID)
print(Dataclass对象_MIN > Dataclass对象_MID)
print(Dataclass对象_MIN < Dataclass对象_MID < Dataclass对象_MAX)
print("#------------------------------------------------------------------------")
pprint(sorted([Dataclass对象_MIN, Dataclass对象_MID, Dataclass对象_MAX]))
