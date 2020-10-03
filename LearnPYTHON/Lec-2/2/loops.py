#make sure that you have proper control of the while loop.
#must specify a termination condition, otherwise it will end up in an infinite loop.

#while 2>1:
#    print("haaa")
'''
while 2>1:
    i=input("Enter any alphabet \n")
    if i=='c':
        continue
    elif i=='q':
        break
    print("you have typed",i)
else:
    print("While loop exited without break.")   #Never going to execute
'''

# When we need to repeat any task for number of time, we use for loop

#for i in range(5):
#    print(i)

student_names=['nilesh','mayura','arnav']
student_marks=[56,78,93]
student_marksheet={'nilesh':39,'mayura':52,'arnav':74}
#for i in student_names:
#    print("Student name : ", i)

#for (a,b) in zip(student_names,student_marks):
#    print(a , " : " , b)

#Sort even odd number
'''
even_num = [ ]
odd_num = [ ]
for num in range(0,100):
    if num%2 == 0:
        even_num.append(num)
    else:
        odd_num.append(num)
print(even_num)
print(odd_num)
'''