import math

def 距离(p1, p2):
    return math.sqrt((p1[0]-p2[0])**2 + (p1[1]-p2[1])**2)

def 周长(多边形):
    周长 = 0
    点们 = 多边形 + [多边形[0]]
    for i in range(len(多边形)):
        周长 += 距离(点们[i], 点们[i+1])
    return 周长


点坐标们 = [(1,1), (1,2), (2,2), (2,1)]
周长(点坐标们)


class 点:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def 距离(self, p2):
        return math.sqrt((self.x-p2.x)**2 + (self.y-p2.y)**2)

class 多边形:
    def __init__(self):
        self.顶点们 = []

    def 添加点(self, 点):
        self.顶点们.append((点))

    def 周长(self):
        周长 = 0
        点们 = self.顶点们 + [self.顶点们[0]]
        for i in range(len(self.顶点们)):
            周长 += 点们[i].距离(点们[i+1])
        return 周长


多边形对象 = 多边形()
多边形对象.添加点(点(1, 1))
多边形对象.添加点(点(1, 2))
多边形对象.添加点(点(2, 2))
多边形对象.添加点(点(2, 1))
print("面向对象编程",多边形对象.周长())

class 多边形升级版(多边形):
    def __init__(self, 点们=None):
        点们 = 点们 if 点们 else []
        self.顶点们 = []
        for point in 点们:
            if isinstance(point, tuple):
                point = 点(*point)
            self.顶点们.append(point)

#其实也就是说建议使用面向对象编程.假如一组可能多次使用的数据,那么往往可能好包含很多的使用它的函数,然后那么多的函数,肯定是封装在类里面比较好.
