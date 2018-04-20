require 'rspec'
require_relative 'tasklist'
require_relative 'task'
require_relative 'duedate'

# Story: As a developer, I can create a Task.
#
describe "Task" do
  my_task = Task.new("taskshit", "done", "done")
  newTasklist = Tasklist.new

it "Creates a task" do
  expect{my_task}.to_not raise_error
end
# Story: As a developer, I can give a Task a title and retrieve it.
it "can be given a title" do
  expect{my_task.title = "TITLE"}.to_not raise_error
end
# Story: As a developer, I can give a Task a description and retrieve it.
it "can be given a description and retrieve it" do
  my_task.description = "test"
  expect(my_task.description).to eq "test"
end
# Story: As a developer, I can mark a Task done.
it "can be marked done" do
  expect(my_task.done = true).to eq(true) #.or(eq(false))
end
# Story: As a developer, when I print a Task's status that is done, its status is shown.
it "can be given a description and retrieve it" do
  if my_task.status == "done"
  expect(my_task.status).to eq "done"
  end


end
# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks
it "tasks can be added to task list" do
  newTasklist = Tasklist.new
  task1 = Task.new("Wash Car", true, "done")
  expect{newTasklist.addTask(task1)}.to_not raise_error
end
# Story: As a developer with a TaskList, I can get the completed items.
it "can be given a description and retrieve it" do
    task1 = Task.new("Wash Car", true, "done")
    task2 = Task.new("Wash Clothes", false, "")
    task3 = Task.new("Make dinner", true, "done")
    task4 = Task.new("File taxes", false, "")
    newTasklist.addTask(task1)
    newTasklist.addTask(task2)
    newTasklist.addTask(task3)
    newTasklist.addTask(task4)

    expect{newTasklist.completed}.to_not raise_error
  end
# Story: As a developer with a TaskList, I can get the incomplete items.
#
  it "can be given a duedate" do
    expect{DueDateTask.new('3rd Feb 2019')}.to_not raise_error
  end

  it "item can be added with date to tasklist" do
    newTasklist = Tasklist.new
    task1 = DueDateTask.new("19-4-2017")
    expect{newTasklist.addTask(task1)}.to_not raise_error
  end

  # Story: As a developer, I can print an item with a due date with labels and values.
  it "duedate items with labels and values" do
  duedate = DueDateTask.new('19-4-2018')
  duedate2 = DueDateTask.new('19-4-2019')
  duedate2 = DueDateTask.new('19-5-2019')
  expect{duedate.dueToday}.to_not raise_error
  end
end

# As a developer with a TaskList, I can list all the not completed items in order of due date.
