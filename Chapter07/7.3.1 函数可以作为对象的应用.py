class A:
    def print(self):
        print("My class is A")

def fake_print():
    print("My class isn't A")

a = A()
a.print()
a.print = fake_print
a.print()