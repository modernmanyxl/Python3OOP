from 评分器模块 import 作业_抽象基类

class 作业1:
    """定义课程使用者需要的接口"""
    def 作业(self):
        return f"""
            你好{self.学生}.定义两个变量,一个整数定义为a值为1
            另外一个定义为b赋值为'hello'
        """

    def 检查(self, code):
        return code == "a = 1\nb = 'hello'"
        # 将 传入的参数 code 与 "xxxxxxxxx"对比 返回 True 或者 False


class 作业2(作业_抽象基类):
    def 作业(self):
        return (
            "目前为止做得好, "
            + self.学生
            + ". 计算出这些数字的平均数 "
            + "1, 5, 18, -3 并且赋值到一个变量: 'avg'"
        )

    def 检查(self, code):
        import statistics
        print("#------------------------------------------------------------------------")
        code = "import statistics\n" + code
        print(code)
        print("#------------------------------------------------------------------------")
        local_vars = {}
        global_vars = {}
        print("localvars:",local_vars)
        print("global_vars:",global_vars)
        print("#------------------------------------------------------------------------")
        exec(code, global_vars, local_vars)
        print(code,"\n", global_vars,"\n",local_vars)
        print("#------------------------------------------------------------------------")
        return local_vars.get("avg") == statistics.mean([1, 5, 18, -3])