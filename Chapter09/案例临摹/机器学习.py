import csv
from random import randint
from collections import Counter

dataset_filename = "colors.csv"


def hex转rgb(hex颜色):
    return tuple(int(hex颜色[i: i + 2], 16) for i in range(1, 6, 2))


def 导入颜色(文件名):
    with open(文件名) as 数据集文件:
        文本行们 = csv.reader(数据集文件)
        for 单行 in 文本行们:
            色名, hex颜色 = 单行
            yield (hex转rgb(hex颜色), 色名)


def 颜色生成器(count=100):
    for i in range(count):
        yield (randint(0, 255), randint(0, 255), randint(0, 255))


def 颜色的距离(color1, color2):
    channels = zip(color1, color2)
    距离的平方和 = 0
    for c1, c2 in channels:
        距离的平方和 += (c1 - c2) ** 2
    return 距离的平方和


def 最邻近色们(model_colors, target_colors, num_neighbors=5):
    model_colors = list(model_colors)
    for target in target_colors:
        distances = sorted(
            ((颜色的距离(c[0], target), c) for c in model_colors)
        )
        yield target, [d[1] for d in distances[:num_neighbors]]


def 颜色命名(model_colors, target_colors, num_neighbors=5):
    for target, near in 最邻近色们(model_colors, target_colors, num_neighbors=5):
        name_guess = Counter(n[1] for n in near).most_common()[0][0]
        yield target, name_guess


def 保存颜色命名(colors, 文件名="output.csv"):
    with open(文件名, "w") as file:
        writer = csv.writer(file)
        for (r, g, b), name in colors:
            writer.writerow([name, f"#{r:02x}{g:02x}{b:02x}"])


def 颜色处理(dataset_filename="colors.csv"):
    model_colors = 导入颜色(dataset_filename)
    colors = 颜色命名(model_colors, 颜色生成器(), 5)
    保存颜色命名(colors)


if __name__ == "__main__":
    颜色处理()
