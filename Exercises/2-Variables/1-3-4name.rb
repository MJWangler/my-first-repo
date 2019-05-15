#1 Write a program called name.rb that asks user to type their name and prints out a greeting message with their name included 

puts "What is your name?" 
name = gets.chomp 
puts "Hello " + name 

#3 Add another section that prints the name of the user 10 times, with 1 action. 

10.times do 
   puts name 
end 

#4 Modify so that it asks user for their 1st name, save it into a variable and then does the same for the last name. Then concatenates and outputs full 

puts "What is your first name?" 
first_name = gets.chomp 
puts "What is your last name?"
last_name = gets.chomp 

puts "Full name is " + first_name  + last_name
