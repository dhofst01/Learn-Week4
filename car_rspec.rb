require 'rspec'
require_relative 'carClass'

describe "Car" do
#my_Tesla = Tesla.new("P50", 2015)
  it "Car has to be real" do
    expect{Car.new}.to_not raise_error
  end
  end
