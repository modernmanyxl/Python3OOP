import unittest


class CheckNumbers(unittest.TestCase):
    def test整数小数(self):
        self.assertEqual(1, 1.0)

    def test字符串小数(self):
        self.assertEqual(1, "1")


if __name__ == "__main__":
    unittest.main()
