from 评分器模块 import 作业处理器
from 作业 import 作业1, 作业2

作业处理器 = 作业处理器()
id_作业1 = 作业处理器.注册器(作业1)
# id_作业1 赋值了一个随机数,这个随机数保存在 作业_类 的字典中作为key,key值是对象是对应的 布置作业的 类
id_作业2 = 作业处理器.注册器(作业2)
print("#------------------------------------------------------------------------")
作业处理器.开始作业("Tammy", id_作业1)
# 做了的工作1:实例化了lesson中的作业类 作为对象
# 做了的工作2:将实例化的 作业类 的对象作为 实例化的 作业评分器 的对象本身的属性
# 最后完成的工作: 在字典 学生评分集 中插入键值对 "学生名字":工作2中实例化的 作业评分器 对象,
print("Tammy's Lesson:", 作业处理器.获取作业("Tammy"))
# 其实就是打印了实例化的 "作业评分器" 中 实例化的 "作业.py" 中的 "作业1" 对象 的 "def"
print("Tammy's chekc:",作业处理器.检查作业("Tammy", "a = 1 ; b = 'hello'"))
# 将"xxx" 与 预定的句子 对比,print True or False
print("Tammy's other check",作业处理器.检查作业("Tammy", "a = 1\nb = 'hello'"))
# 将"xxx" 与 预定的句子 对比,print True or False
print(作业处理器.作业总结("Tammy"))
print("#------------------------------------------------------------------------")
作业处理器.开始作业("Tammy", id_作业2)
print("Tammy's Lesson:", 作业处理器.获取作业("Tammy"))
print("Tammy's check:", 作业处理器.检查作业("Tammy", "avg = 5.25"))
print("Tammy's other check:", 作业处理器.检查作业(
    "Tammy", "avg = statistics.mean([1, 5, 18, -3])"))
print(作业处理器.作业总结("Tammy"))
