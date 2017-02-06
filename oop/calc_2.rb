# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Calculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator

  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:

puts "Testing fancy_calculator"
puts

fancy_calculator = FancyCalculator.new

result = fancy_calculator.add(2,7)
if result == 9
  puts "PASS"
else 
  puts "F"
end

result = fancy_calculator.subtract(8,4)
if result == 4
  puts "PASS"
else 
  puts "F"
end

result = fancy_calculator.multiply(6,4)
if result == 24
  puts "PASS"
else
  puts "F"
end

result = fancy_calculator.divide(6,3)
if result == 2
  puts "PASS"
else
  puts "F"
end

result = fancy_calculator.square_root(25)
if result == 5
  puts "PASS"
else
  puts "F"
end