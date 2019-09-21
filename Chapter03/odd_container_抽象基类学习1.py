from collections import Container
class 奇数容器类:
    def __contains__(self, x):
        if not isinstance(x, int) or not x % 2:
            return False
        return True


奇数容器 = 奇数容器类()
print(isinstance(奇数容器, Container))
# 判断一个对象是否是一个类的实例
print(issubclass(奇数容器类, Container))
# 判断一个类是否是一个类的子类的实例
print(1 in 奇数容器)
print(2 in 奇数容器)
print('a string' in 奇数容器)
#python标准库中存在的大多数抽象基类都位于collections模块中。最简单的一个是Container类
