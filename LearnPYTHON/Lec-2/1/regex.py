import re

emailid="nileshrit@gmail.com"
pattern="^[a-zA-Z][0-9a-zA-Z.-_]{5,}@[a-zA-Z]{3,7}.[a-zA-Z]{2,3}$"

if re.match(pattern,emailid):
    print("Email id is valid")
else:
    print("Email id is not valid.")

vehicleno="MH-04-GB-3158"
pattern="^[a-zA-Z]{2}-[0-9]{2}-[a-zA-Z]{2}-[0-9]{4}$"
#pattern="^[\w]{2}-[\d]{2}-[\w]{2}-[\d]{4}$"

if re.match(pattern,vehicleno):
    print("Vehicle number is valid.")
else:
    print("Vehicle number is not valid.")

essay="Writing a essay is very boring, but it is a scoring topic in exam, so become a writer for temporary and use to write a essay on any stupid topic. Essay is a piece of cake after some time. To write a essay you should be feku."
#Findall - print all search keys
print(re.findall("essay",essay))    #Note "Essay" and "essay" is different.

#match - only match starting of the string.
if re.match('[A-Z]',essay):
    print("Essay starting with CAPITAL letter")
    print(re.match('[A-Z]',essay))
else:
    print("Essay not starting with CAPTIAL letter")
    print(re.match('[A-Z]',essay))

#Search - search key in all string but stop at first search.
print(re.search("is",essay,))
