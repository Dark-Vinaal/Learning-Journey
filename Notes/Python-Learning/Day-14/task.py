# 1. WAP to find minimum value from list without min()- li = [45, 26, 72, 25, 14, 17, 98]
li = [45, 26, 72, 25, 14, 17, 98]
min = li[0]
for num in li:
    if num < min:
        min = num
print("Minimum value in the list is :" , min)


# 2. WAP to find the length of the list without len()- li1 = ["Pavan",101,"Kiran",25,"Gouri","Mani",34.78]
list = ["Pavan",101,"Kiran",25,"Gouri","Mani",34.78]
count = 0
for Length in list:
    count += 1
print("Length of the list is : ", count)