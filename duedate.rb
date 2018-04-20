require_relative 'task'
require 'date'
require_relative 'tasklist'

class DueDateTask < Task
  attr_accessor :duedate
  def initialize(title,status,duedate)
  super(title,done,status)
  @duedate = Date.parse(duedate)
  @sortArray = []
  end

# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
def dueToday
  @duedate == Date.today
end

def notDueToday
  @duedate != Date.today
end



#def sortDate
#  @duedateArray.sort_by date
#end
end
