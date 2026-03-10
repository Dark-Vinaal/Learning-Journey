year = int(input("Enter a year: "))

if year % 100 == 0:
    if year % 400 == 0:
        print("The year is a leap year.")
    else:
        print("The year is not a leap year.")
else:
    if year % 4 == 0:
        print("The year is a leap year.")
    else:
        print("The year is not a leap year.")
