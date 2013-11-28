require_relative "bike_container"


class Van

	include Bikecontainer

	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity) 
		
	end

	def load_from(location)
		location.release_all.each do |bike|
			dock(bike)
		end

	end	
end