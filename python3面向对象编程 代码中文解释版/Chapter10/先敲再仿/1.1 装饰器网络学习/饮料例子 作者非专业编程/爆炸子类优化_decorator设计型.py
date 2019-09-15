#https://www.jianshu.com/p/aee06e07c5e9
class 饮料(object):
    def __init__(self):
        self.描述 = "未知饮料"

    def 获取描述(self):
        return(self.描述)

    def 价格(self):
        pass

#以下两个类(实例化后的对象)是被装饰者

class 绿茶(饮料):
    def __init__(self):
        super(绿茶, self).__init__()
        self.描述 = "绿茶基质"

    def 价格(self):
        return 1


class 红茶(饮料):
    def __init__(self):
        super(红茶, self).__init__()
        self.描述 = "红茶基质"

    def 价格(self):
        return 1


class 红绿茶(饮料):
    def __init__(self):
        super(红绿茶, self).__init__()
        self.描述 = "红绿茶基质"

    def 价格(self):
        return 1
#装饰器类的基类


class 装饰器基类(饮料):
    def 获取描述(self):
        pass

#以下调味料是"装饰器"使用的"装饰材料"
#调味料糖
class 糖(装饰器基类):
    #这里传入被装饰类,也可以是组件.
    def __init__(self, 饮料):
        super(糖, self).__init__()
        self.饮料 = 饮料
    
    def 获取描述(self):
        return self.饮料.获取描述() + ",糖"

    def 价格(self):
        return self.饮料.价格() + 2
    

#调味料绿茶茶叶
class 绿茶叶(装饰器基类):
    #这里传入被装饰类,也可以是组件.
    def __init__(self, 饮料):
        super(绿茶叶, self).__init__()
        self.饮料 = 饮料

    def 获取描述(self):
        return self.饮料.获取描述() + ",绿茶叶"

    def 价格(self):
        return self.饮料.价格() + 3

#调味料红茶叶
class 红茶叶(装饰器基类):
    #这里传入被装饰类,也可以是组件.
    def __init__(self, 饮料):
        super(红茶叶, self).__init__()
        self.饮料 = 饮料

    def 获取描述(self):
        return self.饮料.获取描述() + ",红茶叶"

    def 价格(self):
        return self.饮料.价格() + 4

print("下面调制绿茶")
#首先,拿一瓶绿茶(徒有其名,内部描述仅是"绿茶",相当于白开水,在饮料基类默认定价为1)
一杯绿茶 = 绿茶()
print(f"{一杯绿茶.获取描述()}:{一杯绿茶.价格()}")

#先被"糖"装饰(白开水添加"糖",变成"糖水")
一杯绿茶 = 糖(一杯绿茶)
print(f"{一杯绿茶.获取描述()}:{一杯绿茶.价格()}")
#然后被"绿茶叶装饰",("糖水"添加"绿茶叶",编程"绿茶"))
一杯绿茶 = 绿茶叶(一杯绿茶)
print(f"{一杯绿茶.获取描述()}:{一杯绿茶.价格()}")

print("下面调制红绿茶")
一杯混合茶 = 绿茶叶(红茶叶(糖(红绿茶())))
print(f"{一杯混合茶.获取描述()}:{一杯混合茶.价格()}")

