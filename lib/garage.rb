require_relative "bike_container"


class Garage

	include Bikecontainer

	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity) 
		
	end
end