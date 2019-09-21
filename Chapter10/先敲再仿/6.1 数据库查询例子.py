#之前学过了,这里略过吧
import datetime
import sqlite3

conn = sqlite3.connect("sales.db")

conn.execute(
    "CREATE TABLE Sales (salesperson text, "
    "amt currency, year integer, model text, new boolean)"
)
conn.execute(
    "INSERT INTO Sales values"
    " ('Tim', 16000, 2010, 'Honda Fit', 'true')"
)
conn.execute(
    "INSERT INTO Sales values"
    " ('Tim', 9000, 2006, 'Ford Focus', 'false')"
)
conn.execute(
    "INSERT INTO Sales values"
    " ('Gayle', 8000, 2004, 'Dodge Neon', 'false')"
)
conn.execute(
    "INSERT INTO Sales values"
    " ('Gayle', 28000, 2009, 'Ford Mustang', 'true')"
)
conn.execute(
    "INSERT INTO Sales values"
    " ('Gayle', 50000, 2010, 'Lincoln Navigator', 'true')"
)
conn.execute(
    "INSERT INTO Sales values"
    " ('Don', 20000, 2008, 'Toyota Prius', 'false')"
)
conn.commit()
conn.close()


class 查询模板:
    def connect(self):
        self.conn = sqlite3.connect("sales.db")

    def 构造查询(self):
        raise NotImplementedError()

    def 执行查询(self):
        results = self.conn.execute(self.query)
        self.results = results.fetchall()

    def 格式化结果(self):
        输出 = []
        for row in self.results:
            row = [str(i) for i in row]
            输出.append(", ".join(row))
        self.formatted_results = "\n".join(输出)

    def 输出结果(self):
        raise NotImplementedError()

    def process_format(self):
        self.connect()
        self.构造查询()
        self.执行查询()
        self.格式化结果()
        self.输出结果()


class 车辆销量查询(查询模板):
    def 构造查询(self):
        self.query = "select * from Sales where new='true'"

    def 输出结果(self):
        print(self.formatted_results)


class 用户销量查询(查询模板):
    def 构造查询(self):
        self.query = (
            "select salesperson, sum(amt) "
            + " from Sales group by salesperson"
        )

    def 输出结果(self):
        filename = "gross_sales_{0}".format(
            datetime.date.today().strftime("%Y%m%d")
        )
        with open(filename, "w") as outfile:
            outfile.write(self.formatted_results)
