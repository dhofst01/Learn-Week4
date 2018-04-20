class Task
  attr_accessor :title, :description, :done, :status
    def initialize(title,done,status)
      @title = title
      @description = ""
      @done = done
      @status = status
    end
end



# newTasklist = Tasklist.new
# task1 = Task.new
#
# newTasklist.addTask(task1)
#
# newTasklist.display
