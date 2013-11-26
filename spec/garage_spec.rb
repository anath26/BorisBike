require './lib/garage.rb'

describe Garage do 

	let(:garage) {Garage.new(:capacity => 200)}

	it "should define the garage capacity" do
		expect(garage.capacity).to eq(200)
	end
end