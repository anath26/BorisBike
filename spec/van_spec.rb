require './lib/van.rb'

describe Van do 

	let(:van) {Van.new(:capacity => 20)}

	it "should define the van capacity" do
		expect(van.capacity).to eq(20)
	end

	# it "should move broken bike from station to garage" do
	# 	working_bike = Bike.new
	# 	broken_bike = Bike.new
	# 	broken_bike.break
	# 	holder.dock(working_bike)
	# 	holder.dock(broken_bike)
		

end