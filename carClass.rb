require_relative 'vehicleClass'

class Car < Vehicle
attr_accessor :horn
  def initialize (model, year)
    super model, year, signal
    @wheels = 4
    @horn = "beep"
  end
  def wheels
    @wheels
  end
  def horn
    @horn
  end
end
