require_relative "bike_container"
#load the bike_container file

class DockingStation

	include Bikecontainer

	#DEFAULT_CAPACITY = 10

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity) 
		
	end
end

# 	def bike_count
# 		@bikes.count
# 	end

# 	def dock(bike)
# 		raise "Station is full" if full?
# 		@bikes << bike
# 	end

# 	def release(bike)
# 		@bikes.delete(bike)
# 	end

# 	def full?
# 		bike_count == @capacity
# 	end

# 	def available_bikes
# 		@bikes.reject{|bike| bike.broken?}
# 	end
# end