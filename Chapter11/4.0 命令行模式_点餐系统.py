

class 后台系统():
    def cook(self, 单菜品名):
        pass


class 主食厨师系统(后台系统):
    def cook(self, 单菜品名):
        print(f"主食厨师系统:烹制{单菜品名}")


class 冷食厨师系统(后台系统):
    def cook(self, 单菜品名):
        print(f"冷食厨师系统:烹制{单菜品名}")


class 热食厨师系统(后台系统):
    def cook(self, 单菜品名):
        print(f"热食厨师系统:烹制{单菜品名}")


"""
前台服务员系统与后台系统的交互，我们可以通过命令的模式来实现，
服务员将顾客的点单内容封装成命令，直接对后台下达命令，后台完成命令要求的事，即可。
前台系统构建如下
"""

class Invoker():
    菜单 = dict()
    命令列表 = []

    def 设置订单(self, 命令):
        print ("服务员:添加命令...")
        self.命令列表.append(命令)

    def 取消订单(self, 命令):
        print ("服务员:取消命令...")
        self.命令列表.remove(命令)

    def 通知(self):
        print ("服务员:通知执行...")
        for 命令 in self.命令列表:
            命令.execute()

"""
前台系统中的notify接口直接调用命令中的execute接口，执行命令。命令类构建如下：
"""

class Command():
    receiver = None

    def __init__(self, receiver):
        self.receiver = receiver

    def execute(self):
        pass


class FCommand(Command):
    单菜品名 = ""

    def __init__(self, receiver, 单菜品名):
        self.receiver = receiver
        self.单菜品名 = 单菜品名

    def execute(self):
        self.receiver.cook(self.单菜品名)


class 命令主食(FCommand):
    pass
class 命令冷食(FCommand):
    pass
class 命令热食(FCommand):
    pass

"""
Command类是个比较通过的类，foodCommand类是本例中涉及的类，相比于Command类进行了一定的改造。由于后台系统中的执行函数都是cook，因而在foodCommand类中直接将execute接口实现，如果后台系统执行函数不同，需要在三个子命令系统中实现execute接口。这样，后台三个命令类就可以直接继承，不用进行修改了。（这里子系统没有变动，可以将三个子系统的命令废弃不用，直接用foodCommand吗？当然可以，各有利蔽。请读者结合自身开发经验，进行思考相对于自己业务场景的使用，哪种方式更好。）
为使场景业务精简一些，我们再加一个菜单类来辅助业务，菜单类在本例中直接写死。
"""
class 所有菜单:
    菜单 = dict()

    def 加载菜单(self):  # 加载菜单，这里直接写死
        self.菜单["热食"] = ["牛腩", "麻婆豆腐", "豌豆", "青椒炒肉"]
        self.菜单["冷食"] = ["黄瓜", "海带"]
        self.菜单["主食"] = ["米饭", "面"]

    def is主食(self, 单菜品名):
        if 单菜品名 in self.菜单["主食"]:
            return True
        return False

    def is热食(self, 单菜品名):
        if 单菜品名 in self.菜单["热食"]:
            return True
        return False

    def is冷食(self, 单菜品名):
        if 单菜品名 in self.菜单["冷食"]:
            return True
        return False


if __name__ == "__main__":
    顾客点单 = ["牛腩", "麻婆豆腐", "青椒炒肉", "米饭"]  # 顾客点的菜
    服务员实例 = Invoker()

    主食厨师实例 = 主食厨师系统()
    冷食厨师实例 = 冷食厨师系统()
    热食厨师实例 = 热食厨师系统()

    所有菜单实例 = 所有菜单()
    所有菜单实例.加载菜单()
    for 单菜品名 in 顾客点单:
        if 所有菜单实例.is冷食(单菜品名):
            cmd = 命令冷食(冷食厨师实例, 单菜品名)
        elif 所有菜单实例.is热食(单菜品名):
            cmd = 命令热食(热食厨师实例, 单菜品名)
        elif 所有菜单实例.is主食(单菜品名):
            cmd = 命令主食(主食厨师实例, 单菜品名)
        else:
            continue    
        服务员实例.设置订单(cmd)
    服务员实例.通知()
