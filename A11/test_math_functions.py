# test_math_functions.py

import unittest
from math_functions import power, divide

class TestMathFunctions(unittest.TestCase):

    # Tests for power function
    def test_power_zero_exponent(self):
        self.assertEqual(power(4, 0), 1)

    def test_power_negative_exponent(self):
        self.assertEqual(power(2, -2), 0.25)

    def test_power_zero_base(self):
        self.assertEqual(power(0, 5), 0)

    # Tests for divide function
    def test_divide_by_zero(self):
        with self.assertRaises(ValueError):
            divide(10, 0)

    def test_divide_zero_numerator(self):
        self.assertEqual(divide(0, 5), 0)

    def test_divide_negative(self):
        self.assertEqual(divide(-10, 2), -5)

if __name__ == '__main__':
    unittest.main()

