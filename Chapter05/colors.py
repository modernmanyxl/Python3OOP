# 使用属性向类数据添加行为
class Color:
    def __init__(self, rgb_value, name):
        self.rgb_value = rgb_value
        self._name = name

    def _set_name(self, name):
        if not name:
            raise Exception("Invalid Name")
        self._name = name

    def _get_name(self):
        return self._name

    name = property(_get_name, _set_name)

c = Color("#0000ff","bright red")
print("No.1.color:",c.name)
c.name = "red"
print("No.2.color:",c.name)
c.name = ""