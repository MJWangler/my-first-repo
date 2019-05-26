#Write a method that: takes one integer argument, positive negative or zero. Method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value. 

def odd_number_check(number)
  number % 2 == 1
end 

puts odd_number_check(5)
  # => true 

puts odd_number_check(4)
  # => false 
