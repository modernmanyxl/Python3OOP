"""
投资股票是种常见的理财方式，实时查询股票的需求也越来越大.
今天，我们通过一个简单的股票查询客户端来认识一种简单的设计模式：模板模式。
根据股票代码来查询股价分为如下几个步骤：登录、设置股票代码、查询、展示。
构造如下的虚拟股票查询器：
"""

class 股票查询器():
    股票密码 = "0"
    股票价格 = 0.0

    def 登录(self, usr, pwd):
        pass

    def 设置密码(self, code):
        self.股票密码 = code

    def 查询价格(self):
        pass

    def 显示价格(self):
        pass


"""
现在查询机构很多，我们可以根据不同的查询机构和查询方式，来通过继承的方式实现其对应的股票查询器类。
例如，WebA和WebB的查询器类可以构造如下：
"""


class 网站A股票查询器(股票查询器):
    def 登录(self, usr, pwd):
        if usr == "myStockA" and pwd == "myPwdA":
            print ("Web A:Login OK... user:%s pwd:%s" % (usr, pwd))
            return True
        else:
            print ("Web A:Login ERROR... user:%s pwd:%s" % (usr, pwd))
            return False

    def 查询价格(self):
        print ("Web A Querying...code:%s " % self.股票密码)
        self.股票价格 = 20.00

    def 显示价格(self):
        print ("Web A Stock Price...code:%s price:%s" % (self.股票密码, self.股票价格))


class 网站B股票查询器(股票查询器):
    def 登录(self, usr, pwd):
        if usr == "myStockB" and pwd == "myPwdB":
            print ("Web B:Login OK... user:%s pwd:%s" % (usr, pwd))
            return True
        else:
            print ("Web B:Login ERROR... user:%s pwd:%s" % (usr, pwd))
            return False

    def 查询价格(self):
        print ("Web B Querying...code:%s " % self.股票密码)
        self.股票价格 = 30.00

    def 显示价格(self):
        print ("Web B Stock Price...code:%s price:%s" % (self.股票密码, self.股票价格))

##------------------------------------------------------------------------


class 股票查询器(object):
    股票密码 = "0"
    股票价格 = 0.0

    def 登录(self, usr, pwd):
        pass

    def 设置密码(self, code):
        self.股票密码 = code

    def 查询价格(self):
        pass

    def 显示价格(self):
        pass

    def operateQuery不防错(self, usr, pwd, code):
        self.登录(usr, pwd)
        self.设置密码(code)
        self.查询价格()
        self.显示价格()
        return True

    def operateQuery(self, usr, pwd, code):
        if not self.登录(usr, pwd):
            return False
        self.设置密码(code)
        self.查询价格()
        self.显示价格()
        return True






def 没有使用模板模式():
    web_a_query_dev = 网站A股票查询器()
    web_a_query_dev.登录("myStockA", "myPwdA")
    web_a_query_dev.设置密码("12345")
    web_a_query_dev.查询价格()
    web_a_query_dev.显示价格()
    """
    每次操作，都会调用登录，设置代码，查询，展示这几步，是不是有些繁琐？既然有些繁琐，何不将这几步过程封装成一个接口。由于各个子类中的操作过程基本满足这个流程，所以这个方法可以写在父类中：
    看(#------------------------------------------------------------------------下面)
    """

def 使用模板模式():
    web_a_query_dev = 网站A股票查询器()
    web_a_query_dev.operateQuery("myStockA", "myPwdA", "12345")
