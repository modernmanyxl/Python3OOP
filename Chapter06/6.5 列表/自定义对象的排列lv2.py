# 2019-9-10 18:11:51

from functools import total_ordering


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


自定义对象列表 = ["hello", "HELP", "Helo"]

自定义对象列表.sort()

print(自定义对象列表)

print("#------------------------------------------------------------------------")

自定义对象列表.sort(key=str.lower)

print(自定义对象列表)

print("#------------------------------------------------------------------------")
