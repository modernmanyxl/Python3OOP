#暂时写不出来,还没有真正学会asyncio的用法,以后再重写吧
import asyncio
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor


def 查找文件(路径, 要查询的后缀 =".py"):
    当前路径子目录们 = []
    for 单路径 in 路径.interdir():
        单路径的完整路径名 = str(单路径.absolute())
        if 单路径.is_dir() and not 单路径.is_symlink() and not 单路径.match("System Volume Information"):
            当前路径子目录们.append(单路径)
        if 要查询的后缀 in 单路径的完整路径名:
            print(单路径的完整路径名)
    return 当前路径子目录们

async def 协程(路径,执行者):
    结果 = await asyncio.get_event_loop().run_in_executor(线程池, 查找文件, 路径)
    print("已经完成查找")
    for l in 结果:
        print(l)

文件后缀 = ".py"
根目录 = Path("\\").absolute()

循环 = asyncio.get_event_loop()
线程池 = ThreadPoolExecutor(max_workers=20)
循环.set_default_executor(线程池)

print(根目录)

print("开始处理")
循环.run_until_complete()
