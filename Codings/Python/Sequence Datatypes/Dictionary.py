print("***** BOOK MAINTAINANCE *****")
d = {"1": "Python", "2": "Java", "3": "C++", "4": "JavaScript"}

print(d)
print("1. Access the book")
print("2. Delete the book")
print("3. Add the new book")


def get_book():
    bid = int(input("Enter the book id :"))
    print("Enter the book name")
    d.get(bid)
    print("Successfully book found")


def del_book():
    did = input("Enter the book id to delete :")
    d.pop(did)
    print("Successfully book deleted")
    print("Now Available Books are :", d)


def add_book():
    bid1 = int(input("Enter the book id :"))
    bname = input("Enter the book name :")
    d.update({bid1: bname})


while True:
    ch = int(input("Enter the choice [1,2,3]"))
    if ch == 1:
        print("Available Books are :", d)
        get_book()
    elif ch == 2:
        del_book()
    elif ch == 3:
        add_book()
    else:
        print("Invalid Choice")