a = ["Samsung", "Apple", "Oneplus", "Honor"]
b = [1, 2, 3, 4, 5]


def view():
    print(a, b)


def add():
    c = a + b
    print(c)


def insert():
    no1 = int(input("Enter the index value :"))
    name1 = input("Enter the value to insert :")
    a.insert(no1, name1)


def remove():
    name2 = input("Enter the value to remove :")
    a.remove(name2)


def pop():
    no2 = int(input("Enter the index to pop :"))
    a.pop(no2)


def reverse():
    a.reverse()


def extend():
    a.extend(b)
    b.extend(a)


print(" ****** LIST FUCNTIONS ******")

while True:
    print(
        "1. View",
        "2. Insert",
        "3. Remove",
        "4. Pop",
        "5. Reverse",
        "6. Extend",
        sep="\n",
    )
    no = int(input("Enter the any value : "))
    if no == 1:
        view()
    elif no == 2:
        insert()
    elif no == 3:
        remove()
    elif no == 4:
        pop()
    elif no == 5:
        reverse()
    elif no == 6:
        extend()
    elif no == 7:
        add()
    else:
        print("program teriminated")
