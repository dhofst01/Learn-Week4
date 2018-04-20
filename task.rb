require 'date'

class Task
  attr_accessor :title, :description, :done, :duedate, :repeats
    def initialize(title, description)
      @title = title
      @description = description
      @done = false
      @duedate = Date.parse("9-9-9999")
      @repeats = false
    end

    def complete
      @done = true
    end

    def recurring
      @recurring = true
    end

    def due(duedate)
      @duedate = Date.parse(duedate)#.strftime('%Y-%m-%d')

    end

    def print
      p ("Task: #{@title} | Decription: #{@description} | Completed?: #{@done} | Due: #{@duedate}")
    end
end
