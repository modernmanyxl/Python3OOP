from collections import defaultdict

def 字母频率(句子):
    频率们 = defaultdict(int)
    for 字母 in 句子:
        频率们[字母] += 1
    return 频率们


#测试
字频率统计 = 字母频率("hello")
print(字频率统计)
