from collections import Counter

名人们 = [
    "袁隆平",
    "袁隆平",
    "袁隆平",
    "邓稼先",
    "马云",
    "Bill Gates",
    "Dusty Phillips"
]

最大频率人名 = Counter(名人们).most_common(1)[0][0]
print(最大频率人名)
