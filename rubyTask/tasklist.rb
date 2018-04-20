# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks

class Tasklist
  attr_accessor :taskArray, :duedateArray
  def initialize
  @taskArray = Array.new
  @duedateArray = Array.new
  @completeTask = Array.new
  end

  def addTask(task)
    @taskArray << task
  end

  def dueItems(task)
    @duedateArray << task
  end

  def completed
    @taskArray.each do |element|
      if element.status == "done"
        @completeTask << element
      end
    end
    return @completeTask
    end

end


















#
# taskList = Array.new
#
# def newtask(string)
#   # taskList = Array.new
#   newtask = Task.new
#   newtask.title = string
#   taskList << newtask
#   p taskList
# end
#
#
# newtask('a')
# # newtask(b)
# # p taskList
