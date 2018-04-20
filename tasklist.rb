require_relative 'task'
require 'date'
require_relative 'repeaters'

class Tasklist
  attr_accessor :taskarray, :tasklist
  def initialize
    @taskarray = Array.new
  end

def addTask(info,description)
   x = Task.new(info,description)
   @taskarray << x
end

def addRepeater(info,date)
   x = Repeater.new(info,date)
   @taskarray << x
end
# METHOD THAT NICELY DISPLAYS THE TASKLIST
def list
    puts "\t\t       All Items         "
  puts "Task |     Title         |     Complete?     |    Due Date  "
  puts "--------------------------------------------------------------"
  @taskarray.each_with_index do |element, index|
    puts "  #{index+1}:\t #{element.title}      \t #{element.done}   \t #{element.duedate}"
  end
end
# METHOD THAT NICELY DISPLAYS THE COMPLETED TASK FROM TASKLIST
def completed
  puts "\t\t    Completed Items         "
    puts "--------------------------------------------------------------"
  puts "Task |     Title         |     Complete?     |    Due Date  "
    puts "--------------------------------------------------------------"
  @taskarray.each_with_index do |element, index|
    if element.done == true
    puts "  #{index+1}:\t #{element.title}      \t #{element.done}   \t #{element.duedate}"
    end
  end
end
# METHOD THAT NICELY DISPLAYS THE INCOMPLETED TASK FROM TASKLIST
def incompleted
  puts "\t\t    Incomplete Items         "
    puts "--------------------------------------------------------------"
  puts "Task |     Title         |     Complete?     |    Due Date  "
    puts "--------------------------------------------------------------"
  @taskarray.each_with_index do |element, index|
    if element.done != true
    puts "  #{index+1}:\t #{element.title}      \t #{element.done}   \t #{element.duedate}"
    end
  end
end

# METHOD THAT NICELY DISPLAYS THE TASK DUE TODAY FROM TASKLIST
def duetoday
  puts "\t\t Incomplete Items Due Today        "
    puts "--------------------------------------------------------------"
  puts "Task |     Title         |     Complete?     |    Due Date  "
    puts "--------------------------------------------------------------"
  @taskarray.each_with_index do |element, index|
    #If elemet is true dotday and is not done:
    if (element.duedate == Date.today && element.done != true)
    puts "  #{index+1}:\t #{element.title}      \t #{element.done}   \t #{element.duedate}"
    end
  end
end
# METHOD THAT NICELY DISPLAYS THE TASK DUE TODAY FROM TASKLIST
def incompletebydate
  puts "\t\t Incomplete Items Sorted by Date        "
    puts "--------------------------------------------------------------"
  puts "Task |     Title         |     Complete?     |    Due Date  "
    puts "--------------------------------------------------------------"
  #sort task array by date:
    sorted = @taskarray.sort_by{ |i| i.duedate}
    sorted.each_with_index do |element, index|
    #If element is not done:
    if (element.done != true)
    puts "  #{index+1}:\t #{element.title}      \t #{element.done}   \t #{element.duedate}"
    end
  end
end


def yearly
  puts "\t\t Yearly Tasks      "
    puts "--------------------------------------------------------------"
  puts "Task |     Title         |      Repeats?     |    Date  "
    puts "--------------------------------------------------------------"
  #sort task array by date:
    sorted = @taskarray.sort_by{ |i| i.duedate}
    sorted.each_with_index do |element, index|
    #If element is not done:
    if (element.repeats == true)
    puts "  #{index+1}:\t #{element.title}      \t #{element.repeats}   \t #{element.duedate}"
    end
  end
end

end
