i=int(input("Enter any number between 1 to 9 \n"))
if i<5:
    print("You have entered value less than 5.")

if i>5:
    print("You have entered greater than 5.")

if i==5:
    print("You have entered 5.")


student1 = 'nilesh'
student2 = 'nilesh'
student3 = 'Nilesh'
if student1 is student2:
    print("Ye to judwa hai!!!")
else:
    print("Both are different.")

if student2 is student3:    #Note 'nilesh' and 'Nilesh' are different
    print("Ye to judwa hai!!!")
else:
    print("Both are different.")

if not student2 == student3:    # opposite of above if statement.
    print("Both are different, not loop")
else:
    print("Ye to judwa hai!!!")

student_list = ['Abhay','Vicky','Komal','Priya']
if 'Nilesh' in student_list:
    print("Nilesh is part of student")
else:
    print("Nilesh is not part of student")

if 'Nilesh' not in student_list:
    print("Nilesh is not part of student")
else:
    print("Nilesh is part of student")