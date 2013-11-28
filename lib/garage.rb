require_relative "bike_container"


class Garage

	include Bikecontainer

	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity) 
		
	end

	def fix_all_bikes
		fixed_bikes = []
		bikes.each do |bike|
			puts bike
			fixed_bikes << bike.fix
		end
		fixed_bikes
	end
end