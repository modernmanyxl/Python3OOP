import sys
"""
cmd 命令行运行本脚本的时候
sys.argv[0] ----------第一个参数:程序本身
sys.argv[1] ----------第二个参数:
sys.argv[2] ----------到三个参数:
设置默认打开py文件的程序为python
首先在程序文件下shift + 右键,点击"在此处打开命令窗口"

这个例子中cmd的完整代码:
python "9.3.3 logtest.py" "sample_log.txt" "result.txt"
"""
#
导入文件名 = sys.argv[1]
输出文件名 = sys.argv[2]

with open(导入文件名) as 导入文件名:
    with open(输出文件名, "w") as 输出文件:
        warnings = (l for l in 导入文件名 if "WARNING" in l)
        for l in warnings:
            输出文件.write(l)
