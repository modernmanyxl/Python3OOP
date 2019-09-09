import hashlib

class 认证异常类(Exception):
    def __init__(self, 用户名, 用户 = None):
        super().__init__(用户名, 用户)
        self.用户名 = 用户名
        self.用户 = 用户


class 用户名已存在异常类(认证异常类):
    pass


class 密码过短异常类(认证异常类):
    pass

class 无效用户名异常类(认证异常类):
    pass

class 无效密码异常类(认证异常类):
    pass


class 权限错误异常类(Exception):
    pass

class 没有登录错误异常类(认证异常类):
    pass

class 未授权异常类(认证异常类):
    pass





class 用户:
    def __init__(self, 用户名, 密码):
        """创建一个对象代表新用户,密码会在加密之后保存"""
        self.用户名 = 用户名
        self.密码 = self.__加密密码(密码)
        self.is已经登录 = False

    def __加密密码(self, 密码):
        """使用用户名加密密码,并且返回sha digest"""
        hash_string = self.用户名 + 密码
        hash_string = hash_string.encode("utf8")
        return hashlib.sha256(hash_string).hexdigest()

    def 检查密码(self, 密码):
        """如果这个用户的密码有效那么返回True,否则返回False"""
        encrypted = self.__加密密码(密码)
        return encrypted == self.密码


class 认证器类:
    def __init__(self):
        """构造一个认证器去管理用户登入登出"""
        self.用户们 = {}

    def 添加用户(self, 用户名, 密码):
        if 用户名 in self.用户们:
            raise 用户名已存在异常类(用户名)
        if len(密码) < 6:
            raise 密码过短异常类(用户名)
        self.用户们[用户名] = 用户(用户名, 密码)

    def 登录(self, 用户名, 密码):
        try:
            用户 = self.用户们[用户名]
        except KeyError:
            raise 无效用户名异常类(用户名)
        
        if not 用户.检查密码(密码):
            raise 无效密码异常类(用户名,用户)
        
        用户.is已经登录 = True
        return True

    def is已经登录(self, 用户名):
        if 用户名 in self.用户们:
            return self.用户们[用户名].is已经登录
        return False
    

class 权限管理类:
    def __init__(self, 授权者):
        self.授权者 = 授权者
        self.权限们 = {}

    def 添加权限(self, 权限名字):
        """创建一个用户们可以添加的新权限"""
        try:
            设置权限 = self.权限们[权限名字]
        except KeyError:
            self.权限们[权限名字] = set()
        else:
            raise 权限错误异常类("权限已经存在")

    def 用户权限(self, 权限名字, 用户名):
        """授予用户指定的权限"""
        try:
            设置权限 = self.权限们[权限名字]
        except KeyError:
            raise 权限错误异常类("指定的权限不存在")
        else:
            if 用户名 not in self.授权者.用户们:
                raise 无效用户名异常类("用户名")
            设置权限.add(用户名)
    
    def 检查权限(self, 权限名字, 用户名):
        if not self.授权者.is已经登录(用户名):
            raise 没有登录错误异常类(用户名)
        try:
            权限设置 = self.权限们[权限名字]
        except KeyError:
            raise 权限错误异常类("该权限不存在")
        else:
            if 用户名 not in 权限设置:
                raise 未授权异常类(用户名)
            else:
                return True

认证器 = 认证器类()
权限管理 = 权限管理类(认证器)
