
require 'rspec'
require_relative 'vehicleClass'
require_relative 'carClass'
require_relative 'tataClass'

describe "Car" do
  it "Tata has to be real" do
   expect{Tata.new}.to_not raise_error
  end

  it "Tata horn makes beep" do
  a_tata = Tata.new
  a_tata.horn = "beep"
  expect(a_tata.horn).to eq "beep"
end
end
