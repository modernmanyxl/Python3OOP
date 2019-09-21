class 设置:
    默认设置 = {
        'port' : 21,
        #使用:,不是=
        'host' : 'localhost',
        'username' : None,
        'password' : None,
        'debug' : False,
    }
    def __init__(self,**kwargs):
        self.设置 = dict(设置.默认设置)
        #__init__方法所做的第一件事就是复制这个字典。我们这样做而不是直接修改字典，以防实例化两个单独的设置:类级别的"默认设置"和对象级别的"设置"
        self.设置.update(kwargs)
        #使用新字典上的update方法将任何非默认值更改为作为关键字参数提供的值

    def __getitem__(self, key):
        """_getitem__方法允许我们使用索引语法来使用新类。"""
        return self.设置[key]


测试对象 = 设置(username='张三', password='张三的密码', debug=True)
#注意,这里的关键字不再带引号.

print(测试对象['port'])
print(测试对象['username'])
print(测试对象['debug'])



