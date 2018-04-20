require 'rspec'
require_relative 'vehicleClass'
require_relative 'carClass'
require_relative 'toyotaClass'

describe "Car" do
   #my_Tesla = Tesla.new("P50", 2015)
   it "Vehicle has to be real" do
   expect{Vehicle.new}.to_not raise_error
 end

 it "Car has to be real" do
   expect{Car.new}.to_not raise_error
 end

 it "has to have 4 wheels" do
   a_car = Car.new
   expect(a_car.wheels).to be 4
 end

 it "has to beep with horn" do
   a_car = Car.new
   expect(a_car.horn).to eq "beep"
 end
