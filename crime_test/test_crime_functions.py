# test_crime_functions.py

import unittest
from validate_functions import validate_sex, validate_age
from stats_functions import mean_age, median_age

class TestCrimeFunctions(unittest.TestCase):

    def test_validate_sex(self):
        with self.assertRaises(ValueError):
            validate_sex("X")  # Invalid sex
        with self.assertRaises(ValueError):
            validate_sex(None)  # Null sex

    def test_validate_age(self):
        with self.assertRaises(ValueError):
            validate_age(0)  # Age too low
        with self.assertRaises(ValueError):
            validate_age(101)  # Age too high
        with self.assertRaises(ValueError):
            validate_age(None)  # Null age

    def test_mean_age(self):
        self.assertEqual(mean_age([25, 30, 45, 60]), 40)

    def test_median_age(self):
        self.assertEqual(median_age([20, 30, 40]), 30)
        self.assertEqual(median_age([20, 30, 40, 50]), 35)  # Even number of elements

if __name__ == '__main__':
    unittest.main()

