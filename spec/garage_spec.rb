require './lib/garage.rb'

describe Garage do 

	let(:garage) {Garage.new(:capacity => 200)}

	it "should define the garage capacity" do
		expect(garage.capacity).to eq(200)
	end

	it "should fix bike" do
		bike1 = Bike.new
		bike1.break
		garage.dock(bike1)
		garage.fix_all_bikes
		expect(garage.bikes.first).not_to be_broken
	end
end