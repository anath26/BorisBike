require './lib/van.rb'

describe Van do 

	let(:van) {Van.new(:capacity => 20)}

	it "should define the van capacity" do
		expect(van.capacity).to eq(20)
	end
end