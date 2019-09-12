def 函数1():
    print("函数1被调用")


函数1.说明 = "这是函数1"


def 函数2():
    print("函数2被调用")


函数2.说明 = "这是函数2"


def another_function(function):
    print("函数的 说明:", function.说明)
    print("函数的 name:", function.__name__)
    print("函数的 class:", function.__class__)
    print("Now I'll call the function passed in")
    function()


another_function(函数1)
another_function(函数2)
