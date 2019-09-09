import abc
import uuid


class 作业处理器:
    def __init__(self):
        self.学生评分集 = {}
        self.作业_类集 = {}

    def 注册器(self, 作业_类):
        """产生一个随机的id"""
        if not issubclass(作业_类, 作业_抽象基类):
            raise RuntimeError("你的类没有正确的方法s")

        随机id = uuid.uuid4()
        # 以上产生一个不重复的随机数
        self.作业_类集[随机id] = 作业_类
        # 键:键值 == 随机id : 布置的作业_类<类在这里作为对象>
        return 随机id
        # 仅返回随机id
    
    def 开始作业(self, 学名, 随机id):
        self.学生评分集[学名] = 作业评分器(学名, self.作业_类集[随机id])
        # 字典结构 学生评分集→{学生名字 : 键值为实例化的 作业评分器 对象}

    def 获取作业(self, 学名):
        作业评分器对象 = self.学生评分集[学名]
        #获得实例化的 作业评分器 对象
        return 作业评分器对象.作业()
        # 返回 作业.py 中实例化的类 作业1 或者 作业2 对象的 作业 def
        
    def 检查作业(self, 学名, 学生写的代码):
        作业评分器对象 = self.学生评分集[学名]
        return 作业评分器对象.检查(学生写的代码)
        #return True or False

    def 作业总结(self, 学生):
        作业评分器对象 = self.学生评分集[学生]
        return f"""
        {学生}'s 尝试次数s at {作业评分器对象.作业_类.__class__.__name__}:

        尝试次数s: {作业评分器对象.尝试次数s}
        正确尝试次数: {作业评分器对象.正确尝试次数s}
        通过?: {作业评分器对象.正确尝试次数s > 0}
        """


class 作业_抽象基类(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def 作业(self, 学生):
        pass

    @abc.abstractmethod
    def 检查(self, code):
        pass

    @classmethod
    def __subclasshook__(cls, C):
        if cls is 作业_抽象基类:
            attrs = set(dir(C))
            if set(cls.__abstractmethods__) <= attrs:
                return True

        return NotImplemented


class 作业评分器:
    def __init__(self, 学生, 作业_类):
        self.作业_类 = 作业_类()
        # 实例化的 作业_类 ?
        self.作业_类.学生 = 学生
        self.尝试次数s = 0
        self.正确尝试次数s = 0

    def 检查(self, code):
        self.尝试次数s += 1
        result = self.作业_类.检查(code)
        if result:
            self.正确尝试次数s += 1

        return result

    def 作业(self):
        return self.作业_类.作业()
