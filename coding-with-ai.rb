# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  result[vote.downcase] += 1
  result
end

p totals

# It looks like you have a Ruby code snippet that counts the number of votes for different types of tacos and creates a hash called totals with the vote counts. The code normalizes the votes by converting them to lowercase to ensure case-insensitivity. After processing all the votes, it prints out the totals hash.

# Here's what the code does:

# taco_votes is an array containing votes for different types of tacos.

# Hash.new(0) initializes an empty hash with a default value of 0 for missing keys. This is a common technique for counting occurrences of items in an array.

# The reduce method is used to iterate through the taco_votes array and update the totals hash. For each vote, it increments the count for the corresponding type of taco in the hash by 1.

# vote.downcase converts the vote to lowercase to ensure that votes with different casing (e.g., "Fish Taco" and "fish taco") are counted together.

# p totals prints the totals hash, which will show the count of each type of taco.

# When you run this code, it will output a hash with the vote counts for each type of taco, like this:

# The code counts the votes for each type of taco, and since it's case-insensitive, it groups votes with different casing together.