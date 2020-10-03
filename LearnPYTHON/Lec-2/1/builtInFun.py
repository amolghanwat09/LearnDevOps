name = "Nilesh"
age=45
height = 6.2
detail_list = ["Nilesh",45,6.2]
course_list = ['yml','json','python','ansible']
detail_tup = "Nilesh",45,6.2
detail_dict = {"name":"Nilesh","age":45,"height":6.2}

essay="This is very odd to write essay on programming, but it true that there are lot of idiots who do this."
#check data type
print(type(name))
print(type(age))
print(type(height))
print(type(detail_tup))
print(type(course_list))

#list append and extend and remove
course_list.append('python')
print(course_list)
course_list.insert(4,'Jenkins')
print(course_list)
course_list_2 = ['terrafom','docker']
course_list.extend(course_list_2)
print(course_list)
course_list.remove('ansible')
print(course_list)
print(course_list.index('python'))
#use of index / string format
print(name[2])      #Index start from 0
print(name[2:5])    #Last digit doesn't consider, only print 2,3,4
print(essay[1:50:2])    #skip char
print(essay[::-1])  #reverse string

print(len(essay))   #lenght of string
print(essay.upper())    #convert string in upper case
print(essay.lower())    #convert string in lower case
print(essay.find('i'))  # find index position of char or string
print(essay.count('i')) # find count of char or string repeated in string.

essaystrip = essay.strip('This')
print(essaystrip)

z = '#####   my 2nd python class, and it was too long.'
z = z.strip('#').strip(' ').strip('my')
print(z)

#range()
print(list(range(10)))
print(list(range(3,10)))
print(list(range(2,10,2)))
print(list(range(-10)))
print(list(range(-10,-3)))
print(list(range(-10,-2,2)))

fname='nilesh'
sname='indore'
i=10
d=20
print(i+d)  #integer
print(fname+sname)  #string concanate
print(d-i)
#print(fname-sname)  #will give error, sub can't do with strings
print(i-d)
print(d/i)
print(int(d/i))
print(d%i)
