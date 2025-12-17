# 1. WAP to create a dictionary where keys are 1,2,3 and value are their squares using dictionary comprehension

dict = {x: x**2 for x in [1, 2, 3]}
print("Dictionary Squares :", dict, type(dict)) 