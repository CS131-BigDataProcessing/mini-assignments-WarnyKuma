# validate_functions.py

def validate_sex(Vict sex):
    if Vict sex not in ['M', 'F'] or vict_sex is None:
        raise ValueError("Invalid sex: must be 'M' or 'F' and not NULL.")

def validate_age(Vict age):
    if not 1 <= Vict age <= 100 or vict_age is None:
        raise ValueError("Invalid age: must be between 1 and 100 and not NULL.")

