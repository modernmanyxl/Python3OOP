字典 = {"good": (11, 22, 33),
        "bad": (101, 202, 303)}
print(字典["good"])
# 不存在的键
#print(字典["不存在"])
print(字典.get("get测试"))
print(字典)
print(字典.get("get测试", "不存在这个键"))
print(字典.keys())
print(字典.values())
print(字典.items())