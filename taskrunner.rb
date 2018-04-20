require 'date'
require_relative 'task'
require_relative 'tasklist'




#CREATE AND DISPLAY A TASK:
mytasklist = Tasklist.new


mytasklist.addTask("Clean car", "vaccuum")
mytasklist.addTask("My Birthday", "Celebrate!!!")
mytasklist.addTask("Clean house", "vaccuum and do laundry")
mytasklist.addTask("Pay taxes", "find W2 forms")
mytasklist.addTask("Pay Credit Cards", "BoA, Chase cards")
mytasklist.addTask("Pay Phone bill", "BoA, Chase cards")
mytasklist.addTask("Pay Electric", "BoA, Chase cards")
mytasklist.addTask("Pay gas bill", "BoA, Chase cards")
mytasklist.addTask("Wash car  ", "$10 on Tuesday")
mytasklist.addTask("Moms Birthday", "Make dinner plans")
#ADD REPEATERS:
mytasklist.addRepeater("Anniversary", "11/20")
# p mytasklist.taskarray[0]

#Completed tasks 1 and 2
mytasklist.taskarray[0].due("20-4-2018")
mytasklist.taskarray[1].due("20-4-2018")
mytasklist.taskarray[2].due("4-9-2018")
mytasklist.taskarray[3].due("20-4-2018")
mytasklist.taskarray[4].due("20-4-2018")
mytasklist.taskarray[5].due("18-4-2018")


mytasklist.taskarray[0].complete
mytasklist.taskarray[1].complete

#Create a repeating tasks / anniversary
mytasklist.taskarray[9].repeats = true


p mytasklist.taskarray[9].repeats

mytasklist.list
mytasklist.completed
mytasklist.incompleted
mytasklist.duetoday
mytasklist.incompletebydate
mytasklist.yearly
#date in month/day
testdate ="11/31"
#covert day to integer
day = testdate[3..4].to_i
p day
#convert month to integer:
month = testdate[0..1].to_i
p month
#compare
# if we are on the same month.. compare days: if task day is before today's day, put task into next year
if month == Date.today.month
  if day <= Date.today.day
    puts "The date has passed or is today"
  end
end

p Date.today.year == 2018
p Date.today.month
#strdate = "#{testdate}/#{Date.today.year}"
# p strdate
# #datedate =  Date.parse(strdate)
# p datedate
