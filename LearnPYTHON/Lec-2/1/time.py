import datetime
from pytz import timezone
import time

print("show your system time.")
date = datetime.datetime.today()    
print(date)

print("show current time in UTC timezone")
print(datetime.datetime.utcnow())

print("show time in specific format")
print(date.strftime("%M-%H-%d-%b-%a")) 


print("Show current time in specific timezone.")
tz="Europe/London"
tztimesimple = datetime.datetime.now(timezone(tz))
tztimeformat = datetime.datetime.now(timezone(tz)).strftime("%M-%H-%d-%b-%a")
print(tztimesimple)
print(tztimeformat)