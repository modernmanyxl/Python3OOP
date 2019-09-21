from collections import defaultdict
元素数量 = 0
def 元组统计():
    global 元素数量
    元素数量 += 1
    return (元素数量, [])

测试对象 = defaultdict(元组统计)
测试对象["a"][1].append("hello")
测试对象["b"][1].append("world")
print(测试对象)
