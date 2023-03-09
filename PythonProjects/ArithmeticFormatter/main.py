# import fuction 
from arithmetic_arranger import arithmetic_arranger
from unittest import main

print(arithmetic_arranger(["32 + 698", "3801 - 2", "45 + 43", "123 + 49"],True))
print ("\n")
print(arithmetic_arranger(["32 + 8", "1 - 3801", "9999 + 9999", "523 - 49"], True))
print ("\n")
print(arithmetic_arranger(['3801 - 2', '123 + 49']))
print ("\n")
print(arithmetic_arranger(['1 + 2', '1 - 9380']))
print ("\n")
print(arithmetic_arranger(['3 + 855', '3801 - 2', '45 + 43', '123 + 49']))
print ("\n validation error")
print(arithmetic_arranger(['98 + 3g5', '3801 - 2', '45 + 43', '123 + 49']))
print ("\n")
print(arithmetic_arranger(['11 + 4', '3801 - 2999', '1 + 2', '123 + 49', '1 - 9380']))
print ("\n")
print(arithmetic_arranger(['44 + 815', '909 - 2', '45 + 43', '123 + 49', '888 + 40', '653 + 87']))
print ("\n")
print(arithmetic_arranger(['3 / 855', '3801 - 2', '45 + 43', '123 + 49']))
print ("\n")
print(arithmetic_arranger(['24 + 85215', '3801 - 2', '45 + 43', '123 + 49']))

# Run unit tests automatically
main(module='test_module', exit=False)