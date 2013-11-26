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
end