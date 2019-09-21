#https://www.jb51.net/article/132553.htm
"""
命令模式介绍：

在面向对象编程中，命令模式是概括所有方法信息的设计模式。

此模式对象包涵方法名，及其相关参数值。

命令模式是一个分类的观察者设计模式，在命令模式下，对象被概括为一个命令表单，此表单包涵了所有用户需要的方法。

举个例子：如果有个按钮是用户接口“red”，当被触碰的时候，会启动后台的“turn red”接口。现在用户并不知道，通过什么类或者方法的接口能够让后台处理“turn red”操作，但是这个命令被发送了（触碰“red”按钮），会使得后台处理“turn red”操作。因此，命令模式给用户一个接口，而不用让用户了解哪些是实际执行的程序，也不会影响到用户程序。

实现命令模式的关键就是让调用者不要包涵底层实际命令执行代码，相同的调用者应该采用相同的接口。

命令模式是由三个组件构成，客户，调用者，接受者。

客户：一个实例化的对象

调用者：决定哪个方法被调用

接受者：实际命令的执行者

Example:

实现一个开关
切换ON/OFF
用开关ON/OFF去硬编码一个事件
"""


class Switch:
    ''' The INVOKER class'''
    def __init__(self, flipUpCmd, flipDownCmd):
        self.__flipUpCommand = flipUpCmd
        self.__flipDownCommand = flipDownCmd

    def flipUp(self):
        self.__flipUpCommand.execute()

    def flipDown(self):
        self.__flipDownCommand.execute()


class Light:
    """The RECEIVER Class"""
    def turnOn(self):
        print ("The light is on")

    def turnOff(self):
        print ("The light is off")


class Command:
    """The Command Abstrace class"""
    def __init__(self):
        pass

    def execute(self):
        pass


class FlipUpCommand(Command):
    '''The Command class for turning on the light'''
    def __init__(self, light):
        self.__light = light

    def execute(self):
        self.__light.turnOn()


class FileDownCommand(Command):
    '''The Command class for turning off the light'''
    def __init__(self, light):
        Command.__init__(self)
        self.__light = light

    def execute(self):
        self.__light.turnOff()


class LightSwitch:

    '''The Client Class'''
    def __init__(self):
        self.__lamp = Light()
        self.__switchUp = FlipUpCommand(self.__lamp)
        self.__switchDown = FileDownCommand(self.__lamp)
        self.__switch = Switch(self.__switchUp, self.__switchDown)

    def switch(self, cmd):
        cmd = cmd.strip().upper()
        try:
            if cmd == "ON":
                self.__switch.flipUp()
            elif cmd == "OFF":
                self.__switch.flipDown()
            else:
                print ("Argument \"ON\" or \"OFF\" is required")
        except Exception as msg:
            print ("Exception occured:%s" % msg)

#Execute if the file is run as a script and not imported as a module
if __name__ == "__main__":
    lightSwitch = LightSwitch()
    print ("Switch ON test")
    lightSwitch.switch("ON")
    print ("Switch OFF test")
    lightSwitch.switch("OFF")
    print ("Invalid Command test")
    lightSwitch.switch("****")
