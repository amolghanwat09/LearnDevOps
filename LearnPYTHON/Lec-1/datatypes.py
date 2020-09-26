#Comment
# single line use #
# multiline use '''
#1) string -
    # Include any charachter. Can be alpha...can be numberic....can be special character.
    # It's value should be in quotes. Quotes can be single ....can be double...depend upon you.

name = "Nilesh"
emp_code = "C302"
symbol = "-->"
print(name)
print(emp_code)
print(symbol)



#2) integer -
    # Include only complete numbers. like 2, 45, 103, 205 but not 3.14 or 789.23
    # It's value should not be in quotes.

age = 45
emp_cell_no = 7738003350
print(age)
print(emp_cell_no)

#3) float -
    # Include incomplete number like 3.14, 456.34
    # it's value should not be in quotes.
height = 6.5
weight = 63.75
print(height)
print(weight)

#4) list -
    #As name indicate it is collection of multiple values.
    #It is just like ARRAY....
    #It contain any type of data....string...integer...float...any type...even list inside list....
    #It should be inside square bracket "[]"
name_list = ["Nilesh","Manisha","Mayura",3.14,2034]
big_list = ["Python","Java",name_list,45.56,20010]
print(name_list)
print(big_list)


#5) tuple -
    #It is same as list, but in list you can change values if you want, in tuple once value defined can not be changed.
    #It is defined inside round bracket "()" but can be defined without round bracket also but need to be used comma "," between 2 values/items.
t1 = ("Nilesh","Mayura",34,67.12)
t2 = "Manisha","Nirmala",45.12,2000
print(t1)
print(t2)

#6) set -
    #It is also same as list, but it is unordered and unindexed. So everytime order of set is random.
    #once created, you can not change item but you can add items
    #It prints only unique values, if there is any duplicate value in set it will print only once.
    #It is define inside curly braces. "{}"
s1 = {"Nilesh","Mayura","Manisha","Nirmala",45,234.78,"Arnav","Nilesh"}
print(s1)

#7) dictionary -
    #It is also same as list, but every item is pair of "key=value".
    #It is define inside curly braces. "{}"
    #Value can be any datatype.
    #Key should be in quotes, values also should be in quotes if it is string.
d1 = {'name':"Nilesh",'age':35,'add' : "Kalwa" , 'work': "Engg" }
print(d1)