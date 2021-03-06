# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def missing_letter(range)
  given_letters = range.split("")
  all_letters = (given_letters[0]..given_letters[-1]).to_a 
    all_letters.each do |letter|
      if given_letters.include?(letter)   
      elsif not given_letters.include?(letter)
        return letter
      end
      if given_letters == all_letters
        return nil
      end
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
