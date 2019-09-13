import os
path = os.getcwd()
导入文件 = os.path.join(
    path, r"python3面向对象编程 代码中文解释版\Chapter09", "9.4sample_log.txt")
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
        return l.replace("\tWARNING", "")

with open(导入文件) as infile:
    with open(导出文件, "w") as outfile:
        filter = WarningFilter(infile)
        for l in filter:
            outfile.write(l)
