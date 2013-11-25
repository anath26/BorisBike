require 'bike'

describe Bike do 

	let (:bike) {Bike.new}
	#is the same as writting bike = Bike.new

	it"should not be broken after we create it" do
		#bike = Bike.new
		#new object in Bike class
		expect(bike).not_to be_broken
		#expect an instance of this class
		#a method "broken?" that should return false
	end

	it"should be able to break" do
		#bike = Bike.new
		bike.break
		expect(bike).to be_broken
	end

	it"should be able to get fixed" do
	 	#bike = Bike.new
	 	bike.break
	 	bike.fix
	 	expect(bike).not_to be_broken
	end
end

