import threading
import time
#这里使用方法__new__来实现单例模式


class 单例模式(object):  # 抽象单例
    def __new__(cls, *args, **kw):
        if not hasattr(cls, '_instance'):
            orig = super(单例模式, cls)
            cls._instance = orig.__new__(cls, *args, **kw)
        return cls._instance
#总线


class 车(单例模式):
    锁 = threading.RLock()

    def 发送数据(self, data):
        self.锁.acquire()
        time.sleep(3)
        print ("发送信号数据...", data)
        self.锁.release()
#线程对象，为更加说明单例的含义，这里将Bus对象实例化写在了run里


class 访问实体(threading.Thread):
    我的车 = ""
    名字 = ""

    def 获取名字(self):
        return self.名字

    def 设置名字(self, 名字):
        self.名字 = 名字

    def 运行(self):
        self.我的车 = 车()
        self.我的车.发送数据(self.名字)


if __name__ == "__main__":
    for i in range(3):
        print("访问实体 %d 开始运行..." % i)
        我的实体 = 访问实体()
        我的实体.设置名字("实体_"+str(i))
        我的实体.start()
