
class 状态基类(object):
    def 处理(self, 剩余字符, 上下文对象):
        pass


class 第一个标签状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        标签头索引 = 剩余字符.find("<")
        标签尾索引 = 剩余字符.find(">")
        标签名称 = 剩余字符[标签头索引 + 1: 标签尾索引]
        根 = 节点类(标签名称)
        上下文对象.根 = 上下文对象.当前节点 = 根
        上下文对象.状态 = 交接处状态()
        return 剩余字符[标签尾索引 + 1:]


class 交接处状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        已脱空字符串 = 剩余字符.strip()
        #删除"remain_string"中头尾的空格
        if 已脱空字符串.startswith("</"):
            上下文对象.状态 = 关闭标签状态()
        elif 已脱空字符串.startswith("<"):
            上下文对象.状态 = 打开标签状态()
        else:
            上下文对象.状态 = 文本节点状态()
        return 已脱空字符串


class 打开标签状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        标签头索引 = 剩余字符.find("<")
        标签尾索引 = 剩余字符.find(">")
        标签名称 = 剩余字符[标签头索引 + 1: 标签尾索引]
        节点 = 节点类(标签名称, 上下文对象.当前节点)
        上下文对象.当前节点.子级.append(节点)
        上下文对象.当前节点 = 节点
        上下文对象.状态 = 交接处状态()
        return 剩余字符[标签尾索引 + 1:]


class 关闭标签状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        标签头索引 = 剩余字符.find("<")
        标签尾索引 = 剩余字符.find(">")
        assert 剩余字符[标签头索引 + 1] == "/"
        标签名称 = 剩余字符[标签头索引 + 2: 标签尾索引]
        assert 标签名称 == 上下文对象.当前节点.标签名称
        上下文对象.当前节点 = 上下文对象.当前节点.父级
        上下文对象.状态 = 交接处状态()
        return 剩余字符[标签尾索引 + 1:].strip()


class 文本节点状态(状态基类):
    def 处理(self, 剩余字符, 上下文对象):
        标签头索引 = 剩余字符.find("<")
        文本 = 剩余字符[:标签头索引]
        上下文对象.当前节点.文本 = 文本
        上下文对象.状态 = 交接处状态()
        return 剩余字符[标签头索引:]


class 上下文状态存储类(object):
    """前面的代码中,实例化的上下文对象指的就是这个类的实例,传入这个参数为了传递数据到这个类的实例中去"""
    def __init__(self, 将被解析字符串):
        self.将被解析字符串 = 将被解析字符串
        self.根 = None
        self.当前节点 = None

        self.状态 = 第一个标签状态()

    def 处理(self, 剩余字符):
        剩余字符 = self.状态.处理(剩余字符, self)#后面的self指的是已经实例化的"上下文状态存储对象"
        if 剩余字符:
            self.处理(剩余字符)

    def 开始(self):
        self.处理(self.将被解析字符串)


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


if __name__ == "__main__":
    import os
    input("按下确定键开始")
    环境路径 = os.getcwd()
    xml文件路径 = os.path.join(环境路径, "python3面向对象编程 代码中文解释版/Chapter10/先敲再仿/4.1 xml_example.xml")
    print(xml文件路径)
    with open(xml文件路径) as file:
        文本字符串 = file.read()
        状态存储实例 = 上下文状态存储类(文本字符串)
        状态存储实例.开始()

        nodes = [状态存储实例.根]
        while nodes:
            节点 = nodes.pop(0)
            print(节点)
            nodes = 节点.子级 + nodes
