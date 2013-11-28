require './lib/bike_container.rb'

class ContainerHolder; include Bikecontainer; end

describe Bikecontainer do 

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "empty should be true when Bikecontainer is empty" do
		expect(holder.empty?).to be_true
	end

	it "should return broken bike" do
		working_bike = Bike.new
		broken_bike = Bike.new
		broken_bike.break
		holder.dock(working_bike)
		holder.dock(broken_bike)
		broken_bike_list = holder.broken_bikes 
		expect(broken_bike_list).to eq([broken_bike])
	end

	it "should be able to dock a bike into another container" do 
	  	another_holder = ContainerHolder.new
	  	bike = Bike.new
	  	holder.dock(bike)
	  	expect(holder.bike_count).to eq(1)
	  	expect(another_holder.bike_count).to eq(0)
	  	another_holder.take_items_from(holder)
	  	expect(holder.bike_count).to eq(0)
	  	expect(another_holder.bike_count).to eq(1)
	end


end