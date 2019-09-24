import random
from multiprocessing.pool import Pool


def 质因数(值):
    因数列 = []
    for 除数 in range(2, 值 - 1):
        商, 余数 = divmod(值, 除数)
        if not 余数:
            因数列.extend(质因数(除数))
            因数列.extend(质因数(商))
            break
    else:
        因数列 = [值]
    return 因数列


if __name__ == "__main__":
    进程池实例 = Pool()

    序列 = to_factor = [random.randint(100000, 50000000) for i in range(20)]
    返回结果 = results = 进程池实例.map(质因数, 序列)
    for 值, 因数列 in zip(序列, 返回结果):
        print("{}的质因数列表是{}".format(值, 因数列))
