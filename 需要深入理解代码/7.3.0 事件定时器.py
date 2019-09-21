#鸭子类型该好好学习,虽然代码看得明白,但是似懂非懂.
import datetime
import time


class 时间事件:
    def __init__(self, 结束时间, 调用函数):
        self.结束时间 = 结束时间
        self.调用函数 = 调用函数

    def 准备(self):
        return self.结束时间 <= datetime.datetime.now()


class 定时器:
    def __init__(self):
        self.事件们 = []

    def 之后调用(self, 延时, 调用函数):
        事件结束时间 = datetime.datetime.now() + datetime.timedelta(
            seconds=延时
        )

        self.事件们.append(时间事件(事件结束时间, 调用函数))

    def run(self):
        while True:
            准备的事件们 = (e for e in self.事件们 if e.准备())
            for 事件 in 准备的事件们:
                事件.调用函数(self)#鸭子类型应用处
                self.事件们.remove(事件)
            time.sleep(0.5)


def 格式化时间(展示信息, *args):
    now = datetime.datetime.now()
    print(f"{now:%I:%M:%S}: {展示信息}")


def one(定时器):
    格式化时间("调用 One")


def two(定时器):
    格式化时间("调用 Two")


def three(定时器):
    格式化时间("调用 Three")


class 重复:
    def __init__(self):
        self.count = 0

    def __call__(self, 定时器):
        格式化时间(f"repeat {self.count}")
        self.count += 1
        定时器.之后调用(5, self)

print("#------------------------------------------------------------------------")
定时器 = 定时器()
#生成定时器对象,定时器对象现在生成了[]:self.事件们 = []
定时器.之后调用(1, one)
#定时器对象.事件们添加了对象, 这个对象,结束时间= ??, 调用函数 = ??
定时器.之后调用(2, one)
定时器.之后调用(2, two)
定时器.之后调用(4, two)
定时器.之后调用(3, three)
定时器.之后调用(6, three)
重复 = 重复()
#生成"重复"对象,
定时器.之后调用(5, 重复)
#现在定时器对象.事件们列表有7个元素了.
print("#------------------------------------------------------------------------")
格式化时间("Starting")
定时器.run()
