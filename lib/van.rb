require_relative "bike_container"


class Van

	include Bikecontainer

	
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity) 
		
	end
end