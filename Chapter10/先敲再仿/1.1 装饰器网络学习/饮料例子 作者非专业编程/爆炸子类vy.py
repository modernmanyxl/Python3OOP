class 饮料(object):
    调料价格 = 0.0
    描述 = ""
    def __init__(self, **调料价格们):
        for x, y in 调料价格们.items():
            setattr(self, x, y)
            #上面这行会将x转变成对象属性,上行等价于 self.x = y
            if 调料价格们[x] == "珍珠":
                饮料.调料价格 += 1
                饮料.描述 += "添加珍珠"
            
            if 调料价格们[x] == "牛奶":
                饮料.调料价格 += 2
                饮料.描述 += "添加牛奶"

    def 获取描述(self):
        return(self.描述 + 饮料.描述)


#sc
class 奶茶(饮料):
    def __init__(self, **调料价格们):
        super(奶茶, self).__init__(**调料价格们)
        self.描述 = "奶茶"

    def 价格(self):
        return 饮料.调料价格 + 2



奶茶实例 = 奶茶(调料1="珍珠", 调料2="牛奶",调料3="牛奶")
print("{0}:{1}".format(奶茶实例.获取描述(), 奶茶实例.价格()))
