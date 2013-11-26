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

end