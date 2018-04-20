

  #Story: As a programmer, I can make a vehicle.
#  Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
class Vehicle
    attr_accessor :year, :model, :wheels, :lights, :signal, :speed
    def initialize(year, model)
      @year = year
      @model = model
      @lights = "Off"
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

    def acceleration
      @speed = speed + @accelerate
    end

    def brakes
      @speed = speed - @brake
      if speed < 0
        @speed = 0
      end
    end


    def getStatus
      getStatus = ["Signal #{@signal}, Lights #{@lights}, Year #{@year}, Model #{@model}, Speed #{@speed}"]
    end
  end




my_vehicle = Vehicle.new("Yaris", 2002)
##p my_vehicle.attribute
#  Story: As a programmer, I can make a car.
#  Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

class Car < Vehicle
  def initialize (model, year)
    super model, year
    @wheels = 4
  end
  def getNumWheels
    @wheels
  end
end



#  Story: As a programmer, I can tell how many wheels a car has; default is four.
#  Hint: initialize the car to have four wheels, then create a method to return the number of wheels.


#  Story: As a programmer, I can make a Tesla car.
#  Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
  def initialize (model, year)
    super model, year
    @accelerate = 10
    @brake = 7
  end

end
  my_Tesla = Tesla.new("P50", 2015)
#  Story: As a programmer, I can make a Tata car.
class Tata < Car
   def initialize (model, year)
      super model, year
  end
  def acceleration
    @speed = 2
  end
  def brake
    @speed = 1.25
  end
end
    my_Tata = Tata.new("Nano", 2015)
#  Story: As a programmer, I can make a Toyota car.
class Toyota < Car
  def initialize (model, year)
    super model, year
  end
  def acceleration
    @speed = 7
  end
  def brake
    @speed = 5
  end
end
  my_Toyota = Toyota.new("Yaris", 2013)
#  Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
#  Hint: Make model year part of the initialization.

#  Story: As a programmer, I can turn on and off the lights on a given Vehicle.
#  Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

#  Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

#  Tests:
#  vehicle = Vehicle.new(...)
#  vehicle.lights_on? # should return false
#  vehicle.lights_on = true
#  vehicle.lights_on? # should return true
#  vehicle.lights_on = false
#  vehicle.lights_on? # should return false
#  Story: As a programmer, I can signal left and right. Turn signals starts off.

#  Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

#  Story: As a programmer, I can speed my Teslas up by 10 per acceleration.

#  Story: As a programmer, I can slow my Teslas down by 7 per braking.

#  Story: As a programmer, I can speed my Tatas up by 2 per acceleration.

#  Story: As a programmer, I can slow my Tatas down by 1.25 per braking.

#  Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.

#  Story: As a programmer, I can slow my Toyotas down by 5 per braking.

#  Story: As a programmer, I can call upon a car to tell me all it's information.
#  Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

#  Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
#  Hint: Create two of each vehicles, all from different model years, and put them into an Array.

#  Story: As a programmer, I can sort my collection of cars based on model year.

#  Story: As a programmer, I can sort my collection of cars based on model.
#  Hint: Sort based on class name.

#  Story: As a programmer, I can sort my collection of cars based on model and then year.
#  Hint: Find out how the spaceship operator can help you with an array.
