require_relative 'task'


class Repeater < Task
  def initialize(title,date)
  super
  day = date[3..4].to_i
  month = date[0..1].to_i
  @date =
  @repeats = true
end


end






# attr_accessor :title, :description, :done, :duedate, :repeats
#   def initialize(title, description)
#     @title = title
#     @description = description
#     @done = false
#     @duedate = Date.parse("9-9-9999")
#     @repeats = false
