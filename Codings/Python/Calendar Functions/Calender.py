import calendar

def dispcal():
    year = int(input("Enter the year:"))
    calendar.prcal(year)

def dispmonth():
    year1 = int(input("Enter the year:"))
    month1 = int(input("Enter the month:"))
    print(calendar.month(year1, month1))

print("***** CALENDAR *****")
print("1. Display calendar of a year")
print("2. Display calendar of a month")

while True:
    choice = int(input("Enter your choice:"))
    if choice == 1:
        dispcal()
    elif choice == 2:
        dispmonth()
    else:
        print("Invalid choice")