print("Python List Creation using List Operation")
print("1. Repetation, 2. Concatenation, 3. Length, 4. Iteration, 5. Membership")

l1 = ["one", "two", "three", "four", "five"]
l2 = [1, 2, 3, 4, 5]

# Repetation
r = l1 * 3
print(r)

# Concatenation
c = l1 + l2
print(c)

# Length
print(len(l1))

# Iteration
for i in l2:
    print(i)

# Membership
print(1 in l2)
print("one" in l1)
