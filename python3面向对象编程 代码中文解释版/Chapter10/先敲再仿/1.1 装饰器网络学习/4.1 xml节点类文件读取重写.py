class 状态基类(object):
    def 处理(self, 剩余字符, 上下文对象):
        pass


class 第一个标签状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        标签头索引 = 剩余字符.find("<")
        标签尾索引 = 剩余字符.find(">")
        标签名称 = 剩余字符[标签头索引 + 1: 标签尾索引]
        根 = 节点类(标签名称)#返回一个对象,节点的名称,文本,父级,子级
        上下文对象.根 = 上下文对象.当前节点 = 根
        上下文对象.状态 = 调度中心助理()
        return 剩余字符[标签尾索引 + 1:]


class 打开标签状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        pass


class 关闭标签状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        pass


class 文本节点状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        pass


class 节点类(object):
    def __init__(self, 标签名称, 父级=None):
        self.父级 = 父级
        self.标签名称 = 标签名称
        self.子级 = []
        self.文本 = ""

    def __str__(self):
        if self.文本:
            return self.标签名称 + ": " + self.文本
        else:
            return self.标签名称


class 调度中心助理(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        已脱空字符串 = 剩余字符.strip()
        if 已脱空字符串.startswith("</"):
            上下文对象.状态 = 关闭标签状态()
        elif 已脱空字符串.startswith("<"):
            上下文对象.状态 = 打开标签状态()
        else:
            上下文对象.状态 = 文本节点状态()
        return 已脱空字符串


class 调度中心(object):
    """前面的代码中,实例化的上下文对象指的就是这个类的实例,传入这个参数为了传递数据到这个类的实例中去"""
    def __init__(self, 要解析的字符串):
        self.要解析的字符串 = 要解析的字符串
        self.根 = None
        self.当前节点 = None

        self.状态 = 第一个标签状态()

    def 处理(self, 剩余字符串):
        剩余字符串 = self.状态.处理(剩余字符串, self)#后面的self指的是类"调度中心"实例化后的对象.
        if 剩余字符串:
            self.处理(剩余字符串)

    def 开始(self):
        self.处理(self.要解析的字符串)


