import shutil
import os.path
#备注:该程序不能正常运行,以后再弄吧

def augmented_move(
    目标文件夹, *文件名们, is详细=False, **细节
):
    """Move all 文件名们 into the 目标文件夹, 允许例外处理某些特定文件."""

    def 详细打印(信息, 文件名):
        """print the 信息 only if is详细 is enabled"""
        if is详细:
            print(信息.format(文件名))

    for 文件名 in 文件名们:
        靶路径 = os.path.join(目标文件夹, 文件名)
        print(靶路径)
        if 文件名 in 细节:
            if 细节[文件名] == "ignore":
                详细打印("忽略ing {0}", 文件名)
            elif 细节[文件名] == "copy":
                详细打印("复制ing {0}", 文件名)
                shutil.copyfile(文件名, 靶路径)
        else:
            详细打印("移动ing {0}", 文件名)
            shutil.move(文件名, 靶路径)


print("#------------------------------------------------------------------------")
augmented_move(
    "test", "7.2.3 组合使用1.py", "7.2.3 组合使用2.py", is详细=True
)
