class 可迭代大写首字母:
    def __init__(self, string):
        self.string = string

    def __iter__(self):
        return 首字母大写迭代器(self.string)

class 首字母大写迭代器:
    def __init__(self, string):
        self.words = [w.capitalize() for w in string.split()]
        self.index = 0

    def __next__(self):
        if self.index == len(self.words):
            raise StopIteration()

        word = self.words[self.index]
        self.index += 1
        return word 

    def __iter__(self):
        return self


可迭代对象 = 可迭代大写首字母('hello word for you')
#实例化一个包含数据string和方法__iter__的对象
迭代器 = iter(可迭代对象)
print(迭代器)

while True:
    try:
        print(next(迭代器))
    except StopIteration:
        break


