class 自定义类:
    def __init__(self, 字符串, 数字,is按数字排列 = True):
        self.字符串 = 字符串
        self.数字 = 数字
        self.is按数字排列 = is按数字排列
    
    def __lt__(self, object):
        if self.is按数字排列:
            return self.数字 < object.数字
        return self.字符串 < object.字符串

    def __repr__(self):
        return f"{self.字符串}:{self.数字}"

a = 自定义类("a", 4)
b = 自定义类("b", 3)
c = 自定义类("c", 2)
d = 自定义类("d", 1)
自定义对象列表 = [a, b, c, d]
print("原始列表:\n",自定义对象列表)
自定义对象列表.sort()
print("调用sort()之后:\n",自定义对象列表)
print("下面换成按字母排列,将<is按数字排列>设置成False")
for i in 自定义对象列表:
    i.is按数字排列 = False

自定义对象列表.sort()
print(自定义对象列表)