import asyncio
import random
import time


async def 随机休眠(计数):
    延迟 = random.random()*5
    print("{}休眠{:.2f}s".format(计数,延迟))
    await asyncio.sleep(延迟)
    print("{}被唤醒".format(计数))


async def 创建五个休眠任务():
    print("创建五个任务")
    任务组 = [asyncio.create_task(随机休眠(i)) for i in range(5)]
    #time.sleep(10)#这一行可以测试创建的任务是创建了之后马上运行,还是等待下面代码执行
    print("本asyncio def 在创建无人任务之后休眠")
    await asyncio.sleep(2)
    print("唤醒并且等待五个任务")
    await asyncio.gather(*任务组)
    #只要创建的任务组中的任务执行完毕,那么下面的循环就会退出



asyncio.get_event_loop().run_until_complete(创建五个休眠任务())
#上面这行获取事件循环，并指示它运行任务，直到任务完成
print("五个任务运行完毕")
"""
这个例子中,存在6个协程,"创建五个休眠任务"算一个,它里面创建的有五个,
在async中,这6个协程都是队列中的一员,也就是队列中的一个协程.
所以说他们是平行的关系.
难道"创建五个休眠任务"是管理协程?之前看到网上说每个线程池都有一个管理的线程
"""