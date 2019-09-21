import datetime


class 年龄计算器(object):
    def __init__(self, 生日):
        #将年龄字符串转为整数
        self.年, self.月, self.日 = (int(x) for x in 生日.split("-"))
        print(self.年)
        
    def 计算年龄(self, 生日):
        年, 月, 日 = (int(x) for x in 生日.split("-"))
        age = 年 - self.年
        if (月, 日) < (self.月, self.日):
            age -= 1
        return age


class 岁数据适配器(object):
    def _str_date(self, 生日):
        return 生日.strftime("%Y-%m-%d")

    def __init__(self, 生日):
        生日 = self._str_date(生日)
        self.计算器 = 年龄计算器(生日)

    def 计算年龄(self, 生日):
        生日 = self._str_date(生日)
        return self.计算器.计算年龄(生日)


class 岁数化数据(datetime.date):
    def split(self, char):
        print("hello")
        return self.year, self.month, self.day



if __name__ == "__main__":
    生日对象 = 岁数化数据(1975, 6, 14)
    #创建 生日_岁数化数据 对象
    今天对象 = 岁数化数据.today()
    # 获得今天日期
    print(今天对象)
    print(type(今天对象))
    #创建_截止日期_岁数化数据 对象

    a = 年龄计算器(生日对象)
    print(a.计算年龄(今天对象))

    b = 岁数据适配器(生日对象)
    print(b.计算年龄(今天对象))
