import os
path = os.getcwd()
导入文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "00sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0.0 ret.txt")

# normal loop
with open(导入文件) as 入文件:
    with open(导出文件, "w") as 出文件:
        for 行 in 入文件:
            if "WARNING" in 行:
                出文件.write(行.replace("    WARNING", ""))
