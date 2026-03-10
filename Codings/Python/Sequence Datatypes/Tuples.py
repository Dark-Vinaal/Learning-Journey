m1 = (0,1,2,3,4)
m2 = (5,6,7,8,9)

print(m1)

#Length
print(len(m1))

#Accessing Index
print(m1[2])
print(m1[-1])
print(m2[4])
print(m2[-5])

#Slicing
print(m1[1:4])
print(m1[2:3])
print(m1[:-3])
print(m1[-3:])
print(m1[::2])

#Concatenation
m = m1 + m2
print(m)

#Count
print(m1.count(0))
print(m2.count(6))
print(m.count(2))

#Membership
print(3 in m1)
print(7 in m2)

#Maximum 
print(max(m1))
print(max(m2))

#Minimum
print(min(m1))
print(min(m2))