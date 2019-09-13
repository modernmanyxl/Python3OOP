import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]

path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.43 结果.txt")

# Generator with yield
def warnings_filter(insequence):
    for l in insequence:
        if "WARNING" in l:
            yield l.replace("\tWARNING", "")

with open(导入文件) as infile:
    with open(导出文件, "w") as outfile:
        filter = warnings_filter(infile)
        for l in filter:
            outfile.write(l)
