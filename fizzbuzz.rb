# Get an integer from user
input = gets.chomp.to_i

# Set value of n to 0
n = 0

# Iterate until n equals input given by user
while n <= input
  # Add one to n each iteration until n equals input
  n = n + 1
  # If n is divisible by 3 and 5, print "fizzbuzz"
  if n % 3 == 0 && n % 5 == 0
    puts "fizzbuzz"
  # If n is divisible by 3, print "fizz"
  elsif n % 3 == 0
    puts "fizz"
  # If n is divisible by 5, print "buzz"
  elsif n % 5 == 0
    puts "buzz"
  # Print n if other conditions are not met
  else
    puts n
  end
end
