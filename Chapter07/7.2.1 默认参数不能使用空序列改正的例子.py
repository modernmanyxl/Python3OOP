def hello(b=None):
    b = b if None else []
    b.append("a")
    print(b)


hello()
hello()
# 可能是因为列表是默认的全局变量对象才导致这样的输出结果,一般的变量对象没有在外部赋值都算是局部变量.
