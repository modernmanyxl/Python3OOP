class 只能一个实例(object):
    _singleton = None
    def __new__(cls, *args, **kwargs):
        if not cls._singleton:
            cls._singleton = super(只能一个实例, cls).__new__(cls, *args, **kwargs)
        return cls._singleton

实例1 = 只能一个实例()
实例2 = 只能一个实例()
print(实例1)
print(实例2)