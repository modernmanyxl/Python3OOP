import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]

path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "00sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0.4 结果.txt")

def 筛除warning(infilename):
    with open(infilename) as 入文件:
        yield from (行.replace("    WARNING", "") for 行 in 入文件 if "WARNING" in 行)

filter = 筛除warning(导入文件)
with open(导出文件, "w") as 出文件:
    for 行 in filter:
        出文件.write(行)
