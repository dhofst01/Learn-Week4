
require 'rspec'
require_relative 'vehicleClass'
require_relative 'carClass'
require_relative 'toyotaClass'

describe "Car" do
  it "Toyota has to be real" do
   expect{Toyota.new}.to_not raise_error
  end

  it "Yota horn makes Whoop" do
  a_yota = Toyota.new
  a_yota.horn = "Whoop"
  expect(a_yota.horn).to eq "Whoop"
  end
end
