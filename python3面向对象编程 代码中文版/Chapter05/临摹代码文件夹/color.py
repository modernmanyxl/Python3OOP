class Color:
    def __init__(self, rgb_value, name):
        self.rgb_value = rgb_value
        self._name = name
        # 首先更改name为半私有的_name
    def _set_name(self, name):
        #这是个关联self._name的半私有的方法
        # 下面是执行的时候的验证过程
        if not name:
            raise Exception("Invalide Name")
        self._name = name

    def _get_name(self):
        # 这是关联_self.name半私有的方法
        return self._name
    
    name = property(_get_name, _set_name)
    """
    #最后,我们在底部有property的声明.
    # 它在color class上创建一个名字为name的新属性，用来替换直接的名字为name的属性。
    # 它将此attribute设置为property。
    # 在底层，每当访问或更改值时，property 会调用我们刚刚创建的两个方法。
    # 这个新版本的thecolorclassc可以像以前的版本一样使用，但是现在当我们设置这个属性时，它会执行验证:
    """
print("#------------------------------------------------------------------------")
c = Color("#0000ff", "bright red")
print(c.name)
c.name = "red"
print(c.name)
c.name = "0"
print(c.name)
c.name = ""
