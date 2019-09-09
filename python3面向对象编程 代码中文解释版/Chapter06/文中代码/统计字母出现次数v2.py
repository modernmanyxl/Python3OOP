from collections import defaultdict

def 字母频率(句子):
    频率们 = defaultdict(int)
    #解释:defaultdict类在他的构造函数中接收一个函数作为参数,当范文字典中不存在的键的时候,创建该键同时赋值该键默认值(defaultdict会以不含参数的形式调用该函数返回的默认值)
    #调用int()函数如果不带参数,默认返回0
    for 字母 in 句子:
        频率们[字母] += 1
    return 频率们


#测试
字频率统计 = 字母频率("hello")
print(字频率统计)
