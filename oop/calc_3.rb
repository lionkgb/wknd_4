# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class SimpleCalculator
  include Calculator
end 

class FancyCalculator
  include Calculator
  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "Testing fancy_calculator"
puts

simplecalculator = SimpleCalculator.new
fancycalculator = FancyCalculator.new
whizcalculator = WhizBangCalculator.new


result = simplecalculator.add(2,7)
if result == 9
  puts "PASS"
else 
  puts "F"
end

result = simplecalculator.subtract(8,4)
if result == 4
  puts "PASS"
else 
  puts "F"
end

result = simplecalculator.multiply(6,4)
if result == 24
  puts "PASS"
else
  puts "F"
end

result = simplecalculator.divide(6,3)
if result == 2
  puts "PASS"
else
  puts "F"
end

result = fancycalculator.square_root(25)
if result == 5
  puts "PASS"
else
  puts "F"
end

result = whizcalculator.hypotenuse(24, 10)
if result == 26
  puts "PASS"
else 
  puts "F"
end 

result = whizcalculator.exponent(4,2)
if result == 16
  puts "PASS"
else 
  puts "F"
end 

