#结束:2019-9-16 17:39:08
"""
电梯的控制逻辑，把状态分成开门状态，停止状态和运行状态，
操作分成开门、关门、运行、停止，那流程也是很复杂的。
首先，
开门状态下禁止:开门,运行,停止,但是可以关门然后变成停止状态
停止状态下禁止:停止,关门,但是可以运行,开门
运行状态下禁止:运行,开门,关门,但是可以停止
要用一个一个if…else…实现，首先代码混乱，不易维护；二是不易扩展。至于各种设计原则什么的……那该如何实现？
在上边的逻辑中，每个操作仅仅是一个操作，状态切换与操作是分离的，这也造成后来操作和状态“相互配合”的“手忙脚乱”。
如果把状态抽象成一个类，每个状态为一个子类，每个状态实现什么操作，不实现什么操作，仅仅在这个类中具体实现就可以了。
下面我们实现这个逻辑。
"""



class 电梯状态抽象基类(object):
    def 开门(self):
        pass

    def 关门(self):
        pass

    def 运行(self):
        pass

    def 停止(self):
        pass


class 开门(电梯状态抽象基类):
    def 开门(self):
        print("开门状态:禁止再次'开门'")
        return self

    def 关门(self):
        print("开门:电梯门开始关门")
        print("开门:电梯门已经关门")
        return 停止()

    def 运行(self):
        print("开门:禁止'运行'")
        return self

    def 停止(self):
        print("开门:禁止'停止'")
        return self


class 运行(电梯状态抽象基类):
    def 开门(self):
        print("运行:禁止开门")
        return self

    def 关门(self):
        print("运行:禁止关门")
        return self

    def 运行(self):
        print("运行:禁止运行")
        return self

    def 停止(self):
        print("运行:开始停止")
        print("运行:已经停止")
        return 停止()


class 停止(电梯状态抽象基类):
    def 开门(self):
        print("停止:开始开门")
        print("停止:已经开门")
        return 开门()

    def 关门(self):
        print("停止:禁止'关门'")
        return self

    def 运行(self):
        print("停止:开始运行")
        print("停止:已经运行")
        return 运行()

    def 停止(self):
        print("停止:禁止停止")
        return self


class 上下文状态存储类(object):
    def __init__(self):
        self.电梯状态 = ""

    def 获取状态(self):
        return self.电梯状态

    def 设置状态(self, 电梯状态对象):
        self.电梯状态 = 电梯状态对象

    def 开门(self):
        self.设置状态(self.电梯状态.开门())

    def 关门(self):
        self.设置状态(self.电梯状态.关门())

    def 运行(self):
        self.设置状态(self.电梯状态.运行())

    def 停止(self):
        self.设置状态(self.电梯状态.停止())


if __name__ == "__main__":
    状态存储实例 = 上下文状态存储类()
    状态对象 = 停止()
    状态存储实例.设置状态(状态对象)

    状态存储实例.开门()
    状态存储实例.关门()
    状态存储实例.运行()
    状态存储实例.停止()
    状态存储实例.关门()
 
