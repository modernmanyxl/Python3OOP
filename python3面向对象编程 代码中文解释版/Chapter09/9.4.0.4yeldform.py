import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]

path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.44 结果.txt")

def warnings_filter(infilename):
    with open(infilename) as infile:
        yield from (
            l.replace("\tWARNING", "") for l in infile if "WARNING" in l
        )

filter = warnings_filter(导入文件)
with open(导出文件, "w") as outfile:
    for l in filter:
        outfile.write(l)
