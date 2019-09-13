def 协程示例():
    总计 = 0
    while True:
        send传入数据 = yield 总计
        """
        代码执行遇到yield,同时将导致生成器暂停,协程暂停
        ①这里yield(外部调用send)和生成器中的next一样,直到生成器的yield(外部调用send)被调用才会继续
        ②yield返回send()传入的值,同时赋值到左边,这个"总计"应该是记录上一次最后的"总计"来给后面的代码调用,开发人员定义的语法糖,不能将yield作为运算符来理解,也许原因是"总计"在这里没有作为全局变量
        """
        print("处理新数据前:", send传入数据, "之前总计:",总计)
        总计 += send传入数据
        print("处理新数据后:", send传入数据, "之后总计:",总计)


#和ducktype有点像
协程示例对象 = 协程示例()
#黑队 = tally()
print("零")
print(next(协程示例对象))
print("\n")

print("一")
print(协程示例对象.send(3))
print("\n")

print("二")
print(协程示例对象.send(2))
print("\n")

