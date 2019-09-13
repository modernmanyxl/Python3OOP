import random
import tkinter as tk
import csv


class 程序界面(tk.Frame):
    def __init__(self, master=None):
        super().__init__(master)
        self.grid(sticky="news")
        master.columnconfigure(0, weight=1)
        master.rowconfigure(0, weight=1)
        self.创建小部件()
        self.file = csv.writer(open("colors.csv", "a"))

    def 创建颜色按钮(self, label, column, row):
        button = tk.Button(self, command=lambda: self.点击颜色(label), text=label)
        button.grid(column=column, row=row, sticky="news")

    def 生成随机颜色(self):
        r = random.randint(0, 255)
        g = random.randint(0, 255)
        b = random.randint(0, 255)

        return f"#{r:02x}{g:02x}{b:02x}"

    def 创建小部件(self):
        self.颜色箱 = tk.Label(self, bg=self.生成随机颜色(), width="30", height="15")
        self.颜色箱.grid(column=0, columnspan=2, row=0, sticky="news")
        self.创建颜色按钮("red", 0, 1)
        self.创建颜色按钮("purple", 1, 1)
        self.创建颜色按钮("blue", 0, 2)
        self.创建颜色按钮("green", 1, 2)
        self.创建颜色按钮("yellow", 0, 3)
        self.创建颜色按钮("orange", 1, 3)
        self.创建颜色按钮("pink", 0, 4)
        self.创建颜色按钮("grey", 1, 4)
        self.quit = tk.Button(self, text="退出", command=root.destroy, bg="#ffaabb")
        self.quit.grid(column=0, row=5, columnspan=2, sticky="news")

    def 点击颜色(self, label):

        self.file.writerow([label, self.颜色箱["bg"]])
        self.颜色箱["bg"] = self.生成随机颜色()


root = tk.Tk()
app = 程序界面(master=root)
app.mainloop()
