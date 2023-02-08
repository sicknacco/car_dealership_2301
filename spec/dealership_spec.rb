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








end