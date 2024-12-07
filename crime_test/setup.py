from setuptools import setup, find_packages

setup(
    name='crime_test',
    version='0.1.0',
    packages=find_packages(),
    install_requires=[],
    description='Crime dataset package',
    author='Maria Kuznetsova',
    test_suite='test_crime_functions'
)
