import abc

class 音频文件(object):
    def __init__(self,文件名):
        if not 文件名.endswith(self.后缀):
            raise Exception("无效的文件格式")
        self.文件名 = 文件名 



class MP3文件(音频文件):
    后缀 = "mp3"

    def 播放(self):
        print("把{} as MP3 播放".format(self.文件名))

MP3测试 = MP3文件("我.mp3")
MP3测试.播放()

class Flac格式文件(object):
    def __init__(self,文件名):
        if not 文件名.endswith(".flac"):
            raise Exception("无效的文件格式")

        self.文件名 = 文件名

    def 播放(self):
        print("正在播放{}as flac".format(self.文件名))

Flac测试 = Flac格式文件("测试.flac")
Flac测试.播放()

class 媒体加载器(metaclass = abc.ABCMeta):
    @abc.abstractmethod
    def 播放(self):
        pass
    
    @abc.abstractproperty
    def 后缀(self):
        pass
    
    @classmethod
    def __subclasshook__(被引用类,被判断类):
        if 被引用类 is 媒体加载器:
            被判断类类数据集合 = set(dir(被判断类))
            if set(被引用类.__abstractmethods__) <= 被判断类类数据集合:
                return True
        return NotImplemented


class Ogg格式文件(媒体加载器):
    """符合<媒体加载器>规定格式的子类"""
    后缀 = ".ogg"
    
    def 播放(self):
        print("这回播放一个ogg格式文件")

Ogg文件测试 = Ogg格式文件()
Ogg文件测试.播放()

"""
class 错误的抽象基类子类示范(媒体加载器):
    def 停止(self):
        pass

测试 = 错误的抽象基类子类示范()
测试.停止()
"""


