class Silly:
    def _get_silly(self):
        print("You are getting silly")
        return self._silly

    def _set_silly(self, value):
        print("You are making silly {}".format(value))
        self._silly = value

    def _del_silly(self):
        print("Whoah, you killed silly!")
        del self._silly

    silly = property(_get_silly, _set_silly, _del_silly, "This is a silly property")


class SillyDecorated:
    @property
    def silly(self):
        "This is a silly property"
        print("You are getting silly")
        return self._silly

    @silly.setter
    def silly(self, value):
        print("You are making silly {}".format(value))
        self._silly = value

    @silly.deleter
    def silly(self):
        print("Whoah, you killed silly!")
        del self._silly


s = SillyDecorated()
help(s.silly)

class xxxx:
    @property
    def 属性名(self):
        "docstring 文本,通过help(属性名)得到这行内容"
        print("这行下面的代码其实已经使用了getter 属性名")
        return self._属性名

    @属性名.setter
    def 属性名(self, 值):
        print("这行下面的代码是设置[属性名]的值")
        self._属性名 = 值
    
    @属性名.deleter
    def 属性名(self):
        print("这行下面的代码是删除[属性名]")
        def self._属性名
