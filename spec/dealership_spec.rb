require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end

  it 'exists' do
    expect(@dealership).to be_instance_of(Dealership)
  end

  it 'starts with an empty lot' do
    expect(@dealership.inventory).to eq([])
  end

  it 'can count inventory' do
    expect(@dealership.inventory_count).to eq(0)
  end

  it 'can add inventory' do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    @dealership.add_car(@car_1)

    expect(@dealership.inventory).to eq([@car1])
  end



end