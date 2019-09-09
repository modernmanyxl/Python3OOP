import abc


class AudioFile:
    def __init__(self, filename):
        if not filename.endswith(self.后缀):
            raise Exception("Invalid file format")

        self.filename = filename


class MP3File(AudioFile):
    后缀 = "mp3"

    def play(self):
        print("playing {} as mp3".format(self.filename))


class WavFile(AudioFile):
    后缀 = "wav"

    def play(self):
        print("playing {} as wav".format(self.filename))


class OggFile(AudioFile):
    后缀 = "ogg"

    def play(self):
        print("playing {} as ogg".format(self.filename))


class FlacFile:
    def __init__(self, filename):
        if not filename.endswith(".flac"):
            raise Exception("Invalid file format")

        self.filename = filename

    def play(self):
        print("playing {} as flac".format(self.filename))


class MediaLoader(metaclass=abc.ABCMeta):
    """为子类制定结构类型,强制该类的子类必须具有该类的结构才能实例化子类"""
    @abc.abstractmethod
    def play(self):
        pass

    @abc.abstractproperty
    def ext(self):
        pass

    @classmethod
    def __subclasshook__(cls, C):
        if cls is MediaLoader:
            # 原本应该是self的,如果cls == MediaLoder,证明这个方法被这个类专门调用了
            attrs = set(dir(C))
            #这一行只需获取类所具有的一组方法和属性，包括类层次结构中的任何父类
            if set(cls.__abstractmethods__) <= attrs:
                return True

        return NotImplemented


class Ogg(MediaLoader):
    """正确类"""
    ext = '.ogg'

    def play(self):
        print("这会播放一个.ogg文件")

class Wav(MediaLoader):
    """错误类"""
    pass


if __name__ == "__main__":
    ogg = OggFile("myfile.ogg")
    ogg.play()
    mp3 = MP3File("myfile.mp3")
    mp3.play()
    #notmp3 = MP3File("myfile.ogg")
    #notmp3.play()
    print("#------------------------------------------------------------------------")
    o = Ogg()
    #x = Wav()
    #简而言之，我们现在可以将Ogg类定义为MediaLoader类的子类，而无需实际扩展MediaLoader类:
    print(issubclass(Ogg,MediaLoader))
    print(isinstance(Ogg(),MediaLoader))