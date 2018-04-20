require_relative 'task'
require_relative 'tasklist'
require_relative 'duedate'

newTasklist = Tasklist.new
task1 = Task.new("Wash Car", true, "done")
task2 = Task.new("Wash Clothes", false, "")
task3 = Task.new("Make dinner", true, "done")
task4 = Task.new("File taxes", false, "")

newTasklist.addTask(task1)
newTasklist.addTask(task2)
newTasklist.addTask(task3)
newTasklist.addTask(task4)






# p newTasklist.taskArray[0].status
#p newTasklist.completed[1].status
p newTasklist.duedataArray
#p newTasklist.completed

newTasklist.completed.each do |element|
  if element.status == "done"
    puts "good"
  else
    puts "no good"
  end
end

#newTasklist.completed

p newTasklist.completed.class


#duedate = DueDateTask.new('19-4-2018')
duedate2 = DueDateTask.new('Feb 1 2018')
duedate3 = DueDateTask.new('20 Feb 2018')
# duedate4 = DueDateTask.new('1-2-2019')

#p duedateArray
