from dataclasses import dataclass

@dataclass
class Dataclass类名:
    属性1名字: str
    属性2名字: int
    属性3名字: float

Dataclass对象 = Dataclass类名("hello", 999, 999.999)
print(Dataclass对象)
print(Dataclass对象.属性1名字)