# 2019-9-10 18:30:51

from functools import total_ordering
from operator import itemgetter

@total_ordering
class 自定义类:
    def __init__(self, 字符串, 数字, is按数字排列=True):
        self.字符串 = 字符串
        self.数字 = 数字
        self.is按数字排列 = is按数字排列

    def __lt__(self, object):
        if self.is按数字排列:
            return self.数字 < object.数字
        return self.字符串 < object.字符串

    def __repr__(self):
        return f"{self.字符串}:{self.数字}"

    def __eq__(self, object):
        return all(
            (
                self.字符串 == object.字符串,
                self.数字 == object.数字,
                self.is按数字排列 == object.is按数字排列,
            )
        )


自定义对象 = [("h", 4), ("n", 6), ("o", 5), ("p", 1), ("t", 3), ("y", 2)]
自定义对象.sort(key=itemgetter(1))
print(自定义对象)

