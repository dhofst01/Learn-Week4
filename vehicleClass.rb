class Vehicle
  attr_accessor :year, :model, :wheels, :lights, :signal, :speed
  def initialize (year, model)
   @year = year
  @model = model
  @lights = "off"
  @signal = "off"
  @speed = 0
  @accelerate = 0
  @brake = 0
  end
  def getLightsOn
    @lights = "On"
  end

  def getLightsOff
    @lights = "Off"
  end

  def getSignalRight
  @signal = "right"
  end

  def getSignalLeft
  @signal = "left"
  end

  def getSignalOff
  @signal = "off"
  end

  def signal
    @signal
  end

def getLightStatus
  getLightStatus = ["Lights #{@lights}"]
end

 def Speed
    @speed = speed
   end
end
