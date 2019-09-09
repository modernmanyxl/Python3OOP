stocks = {
    "GOOG": (1235.20, 1242.54, 1231.06),
    "MSFT": (110.41, 110.45, 109.84),
}

random_keys = {}

#string
random_keys["astring"] = "somestring"

#integer
random_keys[5] = "aninteger"

#float
random_keys[25.2] = "floats work too"

#tuple
random_keys[("abc", 123)] = "so do tuples"

#object
class AnObject:
    def __init__(self, avalue):
        self.avalue = avalue

my_object = AnObject(14)
random_keys[my_object] = "We can even store objects"
my_object.avalue = 12


#list
try:
    random_keys[[1, 2, 3]] = "we can't store lists though"
except:
    print("unable to store list\n")

for key, value in random_keys.items():
    print("{} has value {}".format(key, value))
