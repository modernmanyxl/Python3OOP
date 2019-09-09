from dataclasses import dataclass


@dataclass
class Dataclass类名:
    属性1名字: str = "默认值"
    属性2名字: int = 0
    属性3名字: float = 0


Dataclass对象 = Dataclass类名(属性2名字=1)
print(Dataclass对象)
print(Dataclass对象.属性2名字)
