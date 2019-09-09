import math
def 距离(p1,p2):
    return math.sqrt((p1[0]-p2[0])**2 + (p1[1] - p2[1])**2)

def 周长(多边形):
    周长 = 0
    点们 = 多边形 + [多边形[0]]
    for i in range(len(多边形)):
        周长 += 距离(点们[i], 点们[i+1])
    return 周长

点坐标们 = [(1,1),(1,2),(2,2),(2,1)]
print(周长(点坐标们))

class 点:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def 距离(self, p2):
        return math.sqrt((self.x - p2.x)**2 + (self.y - p2.y)**2)

class 多边形:
    def __init__(self, 点们 = None):
        点们 = 点们 if 点们 else []
        self.顶点们 = []
        for 点 in 点们:
            if isinstance(点,tuple):
                点 = 点(*点)
            self.顶点们.append(点)

    def 添加点(self, 点):
        self.顶点们.append((点))

    def 周长(self):
        周长 = 0
        点们 = self.顶点们 + [self.顶点们[0]]
        for i in range(len(self.顶点们)):
            周长 += 点们[i].距离(点们[i+1])
        return 周长



