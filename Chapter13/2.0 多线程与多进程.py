from multiprocessing import Process, cpu_count
import time
import os

from threading import Thread


class 多进程(Process):
    def run(self):
        print(os.getpid())
        for i in range(200000000):
            pass

class 多线程(Thread):
    def run(self):
        print(os.getpid())
        for i in range(200000000):
            pass


    """
    也可以继承于Thread,Process比Thread更快,
    同时更占用cpu,其实也就是多线程和多进程的区别.
    一个程序同时有进程id和线程id,一个进程可以有多个线程
    """


if __name__ == "__main__":
    procs = [多进程() for f in range(cpu_count())]
    #或者procs = [多线程() for f in range(cpu_cont())]
    t = time.time()
    for p in procs:
        p.start()
    for p in procs:
        p.join()
    print("work took {} seconds".format(time.time() - t))
