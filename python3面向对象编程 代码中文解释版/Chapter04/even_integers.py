
#  a simple class that adds items to a list only if they are even numbered integers


class EvenOnly(list):
    def append(self, integer):
        if not isinstance(integer, int):
            raise TypeError("Only integers can be added")
            #格式 raise XXXError("xxxx")/ raise后面是一个对象,由xxxError产生的实例化对象
        if integer % 2:
            raise ValueError("Only even numbers can be added")
        super().append(integer)


e = EvenOnly()
# e.append("字符串")
e.append(2)
e.append(3)
