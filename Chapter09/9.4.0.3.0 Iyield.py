import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]

path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "00sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0.3 I结果.txt")

def 筛除warning(行们):
    for 行 in 行们:
        if "WARNING" in 行:
            yield 行.replace("    WARNING", "")
with open(导入文件) as 入文件:
    with open(导出文件) as 出文件:
        滤后生成器对象 = 筛除warning(入文件)
        for 行 in 滤后生成器对象:
            出文件.write(行)
