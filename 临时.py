import random
from multiprocessing.pool import Pool
import time
import os

def 显示数字(数字):
    数字列 = []
    time.sleep(3)
    数字列.extend(os.getpid())
    数字列 = [数字]
    return 数字列


if __name__ == "__main__":
    进程池实例 = Pool()

    序列 = to_factor = [random.randint(100000, 50000000) for i in range(20)]
    结果 = results = 进程池实例.map(显示数字,序列)
    for 数字, 数字列 in zip(序列, 结果):
        print(f"进程将{数字}变成列表{数字列}")
