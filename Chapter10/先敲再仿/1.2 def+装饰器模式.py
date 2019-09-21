import time 


def 装饰材料(func):
    def wrapper(*args, **kwargs):
        now = time.time()
        print(f"唤醒ing {func.__name__} with {args} and {kwargs}")
        返回值 = func(*args, **kwargs)
        print(f"Executed {func.__name__} in {time.time()- now}ms")
        return 返回值
    
    return wrapper

def test1(a,b,c):
    print("\ttest1 被唤醒")


def test2(a, b):
    print("\ttest2 被唤醒")


def test3(a, b):
    print("\ttest3 被唤醒")
    time.sleep(1)

test1 = 装饰材料(test1)
test2 = 装饰材料(test2)
test3 = 装饰材料(test3)


test1(1, 2, 3)
print("#------------------------------------------------------------------------")
test2(4, b=5)
print("#------------------------------------------------------------------------")
test3(6, 7)
