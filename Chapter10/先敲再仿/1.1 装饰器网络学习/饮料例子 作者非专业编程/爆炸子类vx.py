#https://www.jianshu.com/p/aee06e07c5e9
class 饮料(object):
    def __init__(self):
        self.描述 = "未知描述"

    def 获取描述(self):
        return(self.描述)
    
    def 价格(self):
        pass

#sc
class 矿泉水(饮料):
    def __init__(self):
        super(矿泉水, self).__init__()
        self.描述 = "矿泉水"
    
    def 价格(self):
        return 2


class 绿茶(饮料):
    def __init__(self):
        super(绿茶, self).__init__()
        self.描述 = "绿茶"

    def 价格(self):
        return 4

#实例
for item in [矿泉水(), 绿茶()]:
    print("{0}:{1}".format(item.描述,item.价格()))
