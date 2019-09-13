import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]

path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "00sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0.3 结果.txt")

# Generator with yield
def 筛除warning(insequence):
    for l in insequence:
        if "WARNING" in l:
            yield l.replace("    WARNING", "")
    #这里每一次for循环都会"单次产出"后面的内容?同时将数据保存到生成器对象中?然后下一此yield再将yield的"单次产出"整合到上一次保存的数据?全部yield完之后返回整个生成器对象.(对象包含数据和行为)

with open(导入文件) as 入文件:
    with open(导出文件, "w") as 出文件:
        filter = 筛除warning(入文件)
        for l in filter:
            出文件.write(l)
