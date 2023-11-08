# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

# us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# # Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# def flatten_and_sort_values(hash)
#     values_array = hash.values.flatten
#     sorted_array = values_array.sort
#     return sorted_array
#   end
  
# result = flatten_and_sort_values(us_states)
# puts result

# Pseudo code:
# Define a method that takes in a hash as its parameter.

# Create an empty array.

# Access the values in the hash and store them in an array.

# Sort the values in array in alphabetical order.

# Return the sorted array.

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

class Bike
    attr_reader :model, :wheels, :current_speed
  
    def initialize(model, wheels = 2, current_speed = 0)
      @model = model
      @wheels = wheels
      @current_speed = current_speed
    end
  
    def bike_info
      "The #{model} bike has #{wheels} wheels and is going #{current_speed} mph."
    end
  end
  
#   # Create a new bike object
#   my_bike = Bike.new("Trek Bike")
  
#   # Get and print bike information
#   puts my_bike.bike_info
  

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:


# Create a class called "Bike"

# Initialize the class with instance variables "model", "wheels", and "current_speed"

# Set the default number of wheels to 2

# Set the default current_speed to 0

# Create a method called "bike_info"

# Inside the "bike_info" method, return a sentence containing all the data from the bike object

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

def pedal_faster(speed_increase)
    @current_speed += speed_increase
  end

  def brake(speed_decrease)
    @current_speed = [@current_speed - speed_decrease, 0].max
  end
end

# Create a new bike object
my_bike = Bike.new("Mountain Bike")

# Get and print bike information
puts my_bike.bike_info

# Pedal faster and brake
my_bike.pedal_faster(10) # Increase speed by 10 mph
puts my_bike.bike_info

my_bike.brake(5) # Decrease speed by 5 mph
puts my_bike.bike_info

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# Implement the pedal_faster method

# In the pedal_faster method, increase the speed of the bike by a given amount

# Implement the brake method

# In the brake method, decrease the speed of the bike by a given amount

# Add a condition to ensure that the speed of the bike cannot go below zero