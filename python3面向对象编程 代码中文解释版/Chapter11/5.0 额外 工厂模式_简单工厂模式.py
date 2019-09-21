#

class Burger():
    name = ""
    price = 0.0

    def getPrice(self):
        return self.price

    def setPrice(self, price):
        self.price = price

    def getName(self):
        return self.name


class cheeseBurger(Burger):
    def __init__(self):
        self.name = "cheese burger"
        self.price = 10.0


class spicyChickenBurger(Burger):
    def __init__(self):
        self.name = "spicy chicken burger"
        self.price = 15.0


class Snack():
    name = ""
    price = 0.0
    type = "SNACK"

    def getPrice(self):
        return self.price

    def setPrice(self, price):
        self.price = price

    def getName(self):
        return self.name


class chips(Snack):
    def __init__(self):
        self.name = "chips"
        self.price = 6.0


class chickenWings(Snack):
    def __init__(self):
        self.name = "chicken wings"
        self.price = 12.0


class Beverage():
    name = ""
    price = 0.0
    type = "BEVERAGE"
    def getPrice(self):
        return self.price
    def setPrice(self, price):
        self.price = price
    def getName(self):
        return self.name


class coke(Beverage):
    def __init__(self):
        self.name = "coke"
        self.price = 4.0


class milk(Beverage):
    def __init__(self):
        self.name = "milk"
        self.price = 5.0

class foodFactory():
    type="类属性测试,类的方法和类的属性一样,都是类级别,不需要实例化就可以调用"
    """把工厂加个类方法，省去了将工厂实例化的过程。这种模式就叫做简单工厂模式"""
    @classmethod
    def createFood(cls, foodClass):

        print ("Simple factory produce a instance.")
        foodIns = foodClass()
        return foodIns


class burgerFactory(foodFactory):
    def __init__(self):
        self.type="BURGER"
class snackFactory(foodFactory):
    def __init__(self):
        self.type="SNACK"
class beverageFactory(foodFactory):
    def __init__(self):
        self.type="BEVERAGE"


if  __name__=="__main__":
    print(foodFactory.type)#类级别的属性测试
    cheese_burger2 = foodFactory.createFood(cheeseBurger)#类级别的方法测试.
    print (cheese_burger2.getName(),cheese_burger2.getPrice())