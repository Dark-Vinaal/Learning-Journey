# 1. WAP to access tuple values in reverse order- t = 90, "Mani", "Kiran", 45.23, "Harish"
t = 90, "Mani", "Kiran", 45.23, "Harish"
print(t)
print(t[::-1])


# 2. WAP to swap two tuples without third variable- t1 = (100, "Tarun") t2 = (102, "Harish", 26)
t1 = (100, "Tarun") 
t2 = (102, "Harish", 26)
print("Before Swapping :")
print("t1 =", t1)
print("t2 =", t2)
print()
t1, t2 = t2, t1
print("\nAfter swapping :")
print("t1 =", t1)
print("t2 =", t2)