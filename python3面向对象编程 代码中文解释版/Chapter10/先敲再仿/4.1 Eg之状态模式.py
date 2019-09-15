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


class 第一个标签(object):
    def 处理(self, 剩余字符, 解析器):
        头索引_标签 = 剩余字符.find("<")
        尾索引_标签 = 剩余字符.find(">")
        标签名称 = 剩余字符[头索引_标签 + 1: 尾索引_标签]
        根 = 节点类(标签名称)
        解析器.根 = 解析器.当前节点 = 根
        解析器.状态 = 子节点()
        return 剩余字符[尾索引_标签 + 1:]


class 子节点(object):
    def 处理(self, 剩余字符, 解析器):
        已脱空字符串 = 剩余字符.strip()
        #删除"remain_string"中头尾的空格
        if 已脱空字符串.startswith("</"):
            解析器.状态 = 关闭标签()
        elif 已脱空字符串.startswith("<"):
            解析器.状态 = 打开标签()
        else:
            解析器.状态 = 文本节点()
        return 已脱空字符串


class 打开标签(object):
    def 处理(self, 剩余字符, 解析器):
        头索引_标签 = 剩余字符.find("<")
        尾索引_标签 = 剩余字符.find(">")
        标签名称 = 剩余字符[头索引_标签 + 1: 尾索引_标签]
        节点 = 节点类(标签名称, 解析器.当前节点)
        解析器.当前节点.子级.append(节点)
        解析器.当前节点 = 节点
        解析器.状态 = 子节点()
        return 剩余字符[尾索引_标签 + 1:]


class 关闭标签(object):
    def 处理(self, 剩余字符, 解析器):
        头索引_标签 = 剩余字符.find("<")
        尾索引_标签 = 剩余字符.find(">")
        assert 剩余字符[头索引_标签 + 1] == "/"
        标签名称 = 剩余字符[头索引_标签 + 2: 尾索引_标签]
        assert 标签名称 == 解析器.当前节点.标签名称
        解析器.当前节点 = 解析器.当前节点.父级
        解析器.状态 = 子节点()
        return 剩余字符[尾索引_标签 + 1:].strip()


class 文本节点(object):
    def 处理(self, 剩余字符, 解析器):
        头索引_标签 = 剩余字符.find("<")
        文本 = 剩余字符[:头索引_标签]
        解析器.当前节点.文本 = 文本
        解析器.状态 = 子节点()
        return 剩余字符[头索引_标签:]


class 解析器(object):
    def __init__(self, 将被解析字符串):
        self.将被解析字符串 = 将被解析字符串
        self.根 = None
        self.当前节点 = None

        self.状态 = 第一个标签()

    def 处理(self, 剩余字符):
        remaining = self.状态.处理(剩余字符, self)
        if remaining:
            self.处理(remaining)

    def 开始(self):
        self.处理(self.将被解析字符串)


if __name__ == "__main__":
    import os
    input("wait")
    环境路径 = os.getcwd()
    xml文件路径 = os.path.join(环境路径, r"python3面向对象编程 代码中文解释版/Chapter10/先敲再仿/4.1 xml_example.xml")
    print(xml文件路径)
    with open(xml文件路径) as file:
        contents = file.read()
        解析器的对象 = 解析器(contents)
        解析器的对象.开始()

        nodes = [解析器的对象.根]
        while nodes:
            节点 = nodes.pop(0)
            print(节点)
            nodes = 节点.子级 + nodes
