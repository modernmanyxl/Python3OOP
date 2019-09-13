import os
path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4.0sample_log.txt")
导出文件 = os.path.join(path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.42 结果.txt")

# object-oriented
class WarningFilter:
    def __init__(self, insequence):
        self.insequence = insequence

    def __iter__(self):
        return self

    def __next__(self):
        l = self.insequence.readline()
        while l and "WARNING" not in l:
            l = self.insequence.readline()
        if not l:
            raise StopIteration
        return l.replace("    WARNING", "")

with open(导入文件) as 入文件:
    with open(导出文件, "w") as 出文件:
        filter = WarningFilter(入文件)
        for l in filter:
            出文件.write(l)
