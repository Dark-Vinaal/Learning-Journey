# 1. WAP to find common elements of two given list using sets - l1 = [10, 45, 34, 20, 11]  l2 = [20, 25, 11, 14, 45, 65]
ss2 = [20, 25, 11, 14, 45, 65]
s1 = set(ss1)
s2 = set(ss2)
s3 = s1.intersection(s2)
print(ss1)
print(ss2)
print(s3)


# 2. WAP to remove {1,3,5} the given values from the set at once - s1 = {0,1,2,3,5,6,7,8}ss1 = [10, 45, 34, 20, 11]
sss1 = {0,1,2,3,5,6,7,8}
rem = {1,3,5}
sss1.difference_update(rem)
print("After removing {1, 3, 5}:", sss1)