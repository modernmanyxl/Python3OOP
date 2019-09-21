#只有序列类的实例才含有__iter__属性.(__iter__是不是也就是迭代协议)
#难道要生成迭代对象才会有__next__?
print(hasattr(str, "__iter__"))
print(hasattr(dict, "__iter__"))
print(hasattr(set, "__iter__"))
print(hasattr(tuple, "__iter__"))
print(hasattr(list, "__iter__"))
print("#------------------------------------------------------------------------")
print(hasattr(list, "__next__"))
序列对象 = [1, 2, 3, 4]
迭代器对象 = iter(序列对象)
print(hasattr(迭代器对象, "__next__"))
print(next(迭代器对象))
print(next(迭代器对象))
print(next(迭代器对象))
print(next(迭代器对象))
#print(next(迭代器对象))#这一步将会出错

print("#------------------------------------------------------------------------")
#不含有迭代协议的的例子
print(hasattr(bool, "__iter__"))
