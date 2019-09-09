import 认证模块

# 设置一个测试的用户和权�?
认证模块.认证器.添加用户("小龙", "小龙的密码够六位了吗?")
认证模块.权限管理.添加权限("测试程序")
认证模块.权限管理.添加权限("改变程序")
认证模块.权限管理.用户权限("测试程序","小龙")

class 编辑:
    def __init__(self):
        self.用户名= None
        self.菜单字典 = {
            "登录": self.登录,
            "测试": self.测试,
            "改变": self.改变,
            "退出": self.退出,
        }

    def 登录(self):
        已经登录 = False
        while not 已经登录:
            用户名 = input("用户名")
            密码 = input("密码: ")
            try:
                已经登录 = 认证模块.认证器.登录(用户名, 密码)
            except 认证模块.无效用户名异常类:
                print("不好意思这个用户名不存在")
            except 认证模块.无效密码异常类:
                print("对不起,你的密码不正确")
            else:
                self.用户名= 用户名
    
    def 允许通过(self, 权限):
        try:
            认证模块.权限管理.检查权限(权限, self.用户名)
        except 认证模块.没有登录错误异常类 as e:
            print("{}还没有登录".format(e.用户名))
        except 认证模块.未授权异常类 as e:
            print("{}没有{}这个权限".format(e.用户名, 权限))
            return False
        else:
            return True
    
    def 测试(self):
        if self.允许通过("测试程序"):
            print("现在正在测试程序")

    def 改变(self):
        if self.允许通过("改变程序"):
            print("现在正在改变程序")

    def 退出(self):
        raise SystemExit()
    
    def 菜单(self):
        try:
            答案 = ""
            while True:
                print(
                    """
请输入一个指令
\t登录\t登录
\t测试\t测试程序
\t改变\t改变程序
\t退出\t退出
"""                    
                )
                答案 = input("输入一个指令:")
                try:
                    功能 = self.菜单字典[答案]
                except KeyError:
                    print("{} 不是一个有效的选项".format(答案))
                else:
                    功能()
        finally:
            print("感谢你测试认证模块")

编辑().菜单()
