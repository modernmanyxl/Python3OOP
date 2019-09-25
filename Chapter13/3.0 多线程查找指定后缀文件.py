from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from collections import deque

def 查找文件(路径, 要查询的后缀):
    子目录们 = []
    for p in 路径.iterdir():
        p的完整路径 = str(p.absolute())
        if p.is_dir() and not p.is_symlink() and not p.match("System Volume Information"):
            子目录们.append(p)
        if 要查询的后缀 in p的完整路径:
            print(p的完整路径)
            pass
    return 子目录们


根目录 = Path("\\").absolute()
文件后缀 = ".jpg"

序列池 = deque()

with ThreadPoolExecutor(max_workers=10) as 线程池:
    序列池.append(线程池.submit(查找文件, 根目录, 文件后缀))
    while 序列池:
        print(len(序列池))
        future = 序列池.popleft()
        if future.exception():
            continue
        elif future.done():
            子目录们 = future.result()
            for 子目录 in 子目录们:
                序列池.append(线程池.submit(查找文件, 子目录, 文件后缀))
        else:
            序列池.append(future)
