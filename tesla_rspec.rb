
require 'rspec'
require_relative 'vehicleClass'
require_relative 'carClass'
require_relative 'teslaClass'

describe "Tesla" do
  it "Telsa has to be real" do
   expect{Tesla.new("P85",2016)}.to_not raise_error
  end

  it "Tesla horn makes Whoop" do
  a_tesla = Tesla.new("P50",2016)
  a_tesla.horn = "Bee-Bop-Whoop"
  expect(a_tesla.horn).to eq "Bee-Bop-Whoop"
  end

  it "turns lights on" do
  a_tesla = Tesla.new("P50",2016)
  a_tesla.lights = "on"
  expect(a_tesla.lights).to eq "on"
  end

  it "check lights on/off" do
  a_tesla = Tesla.new("P50",2016)
  a_tesla.lights = "off"
  expect(a_tesla.getLightStatus).to include a_string_matching("off").or a_string_matching("on")
  end

  it "has turn signal, test right, left, off" do
    a_tesla = Tesla.new("P50",2016)
    a_tesla.signal = "off"
    expect{a_tesla.getSignalRight}.to change {a_tesla.signal}.from("off").to("right")
    expect{a_tesla.getSignalLeft}.to change {a_tesla.signal}.from("right").to("left")
    expect{a_tesla.getSignalOff}.to change {a_tesla.signal}.from("left").to("off")  
  end
end
