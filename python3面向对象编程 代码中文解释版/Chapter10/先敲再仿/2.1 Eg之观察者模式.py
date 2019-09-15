class 库存(object):
    def __init__(self):
        self.观察者们 = []
        self._产品 = None
        self._数量 = 0

    def 添加观察者对象(self, 观察者):
        self.观察者们.append(观察者)

    @property
    def 产品(self):
        return self._产品

    @产品.setter
    #每当"self._产品"发生变化,这段代码块就会被调用
    def 产品(self, value):
        self._产品 = value
        self._更新观察者()

    @property
    def 数量(self):
        return self._数量

    @数量.setter
    def 数量(self, value):
        self._数量 = value
        self._更新观察者()

    def _更新观察者(self):
        for 观察者 in self.观察者们:
            观察者()

class 控制台观察者(object):
    def __init__(self, 库存):
        self.库存 = 库存

    def __call__(self):
        print("产品发生变化后的值:",self.库存.产品)
        print("产品数量发生变化后的值:",self.库存.数量)


"""
#以下是interpirter console 调时差代码
核心对象 = 库存()
观察者对象1 = 控制台观察者(核心对象)
观察者对象2 = 控制台观察者(核心对象)
核心对象.添加观察者对象(观察者对象1)
核心对象.添加观察者对象(观察者对象2)
核心对象.产品 = "鞋子"
核心对象.数量 = 10
"""

