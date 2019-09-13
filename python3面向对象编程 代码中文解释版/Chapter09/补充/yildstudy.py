gen_exp = (x ** 2 for x in range(10) if x % 2 == 0)
list_exp = [x ** 2 for x in range(10) if x % 2 == 0]
print(gen_exp)
print(list_exp)
for x in gen_exp:
    print(x)