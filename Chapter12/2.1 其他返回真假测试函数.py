import unittest


class Testcasetest(unittest.TestCase):
    def test_assertequal(self):
        self.assertEqual(1, 1,0)

    def test_assertNotEqual(self):
        self.assertNotEqual(1, 2)


    def test_assertTrue(self):
        self.assertTrue(1)
        self.assertTrue("342342edfsjfk")
        self.assertTrue([1,2,3,4])
        #self.assertTrue(0)

    def test_assertFalse(self):
        self.assertFalse(0)


if __name__ == "__main__":
    unittest.main()