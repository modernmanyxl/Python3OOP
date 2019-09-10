from collections import Counter

def 字符频率统计(句子):
    return Counter(句子)

测试句子 = "englishword 0_0 这是什么?"

print(字符频率统计(测试句子))