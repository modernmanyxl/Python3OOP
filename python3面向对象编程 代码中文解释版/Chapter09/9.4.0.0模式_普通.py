import sys
import os
# generator expression
#导入文件, 导出文件 = sys.argv[1:3]
import os
path = os.getcwd()
导入文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.40 结果.txt")

# normal loop
with open(导入文件) as infile:
    with open(导出文件, "w") as outfile:
        for l in infile:
            if "WARNING" in l:
                outfile.write(l.replace("\tWARNING", ""))
