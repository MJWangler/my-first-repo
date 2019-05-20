  #1 Write a program that asks user to type something, and then displays what was entered. 

  puts(">> Type anything you want:") 

  text = gets.chomp 
  p text 


  #2 Write a program that asks user their age in years, and then convert that age to months 

  puts(">> What is your age in years?")

  age_years = gets.chomp 

  age_months = age_years.to_i * 12 

  p "Your age in months is #{age_months}" 


  #3 Write a program that asks the user whether they want to print: "something", then print if user enters 'y'. Otherwise nothing. 

  puts(">>Would you like to print something? Y/N?")

  thing = gets.chomp.upcase

  if thing == 'Y' 
    puts "something" 
  else 
    puts "nil"
  end 

  
  #4 Modify the code above so that both Y/N are recognized and exceptions are raised via error message 
  
  thing = nil 
  
  loop do 
    puts(">> Do you want me to print something Y/N?")
    thing = gets.chomp.downcase 
    break if %w(y n).include?(thing)
    puts 'Not a valid input. You need to put Y/N!'
  end 

  puts 'something' if thing == 'y' 
  puts 'Sorry I tried not to' if thing == 'n' 

  
  #5 Write a program that prints "Launch School is the best!" repeatedly until a certain number of lines. Program should obtain the number from the user and have a minimum of 3 lines. Use to_i to convert. 

  numbers_of_lines = nil 

  loop do
    puts ">> How many output lines do you want? Enter a number >= 3: "
    numbers_of_lines = gets.to_i 
    break if number_of_lines >= 3 
    puts ">> That's not enough, it needs to be 3 or more!"
  end 

  while number_of_lines > 0 
    puts 'Launch school is the best!'
    numbers_of_lines -= 1 
  end 


  #6 Write a program that displays a welcome message, but only after the user enter the correct password. Define the pass as a constant. 

  PASSWORD = 'SECRET' #Real passwords should be stored in encrypted form, and it should not be visable. Learned later. 

  loop do 
     puts "Welcome to the login screen! Please enter your password."
     password_try = gets.chomp    
     break if password_try == PASSWORD 
     puts "Sorry, that password is not correct!"
  end 

  puts "Welcome! You are now signed in!"


  #7 Write a program similar to the previous, only this time prompt a username and a password. Include an ERROR that does not specify which was incorrect 

  USERNAME = 'MJWangler'

  PASSWORD = 'SECRET'

  loop do 
    puts "Welcome to the login screen! Please enter a valid username." 
    username_try = gets.chomp 
    puts "Please enter your password."
    password_try = gets.chomp
    break if username_try == USERNAME && password_try == PASSWORD 
    puts "Sorry, that information is incorrect. Please try again!"
  end 

  puts "Welcome! You are now signed in!"
    
  #8 Write a program that obtains 2 integers from the user, prints the results of dividing the first by the second. 

  def valid_number?(number_string)
    number+string.to_i.to_s == number_string 
  end 

  numerator = nil 
  
  loop do
    puts "Please enter your numberator"
    numerator = gets.chomp 
    
    break if valid_number?(numerator)
    puts "Invalid input. Only use integers please!"
  end 

  denominator = nil 
  
  loop do
    puts "Please enter the denominator, remember you cannot enter 0"
    denominator = gets.chomp 
    
  if denominator = '0'
    puts "Sorry you cannot divide by 0, the result is undefined!"
  else 
    break if valid_number?(denominator)
    puts "Invalid input. Only use integers please!"
    end 
  end 

  result = numerator.to_i / denominator.to_i 
  puts "#{numerator}" / "#{denominator}" is "#{result}"   


  #9 Modify #5 so that it repeats itself after each input/print iteration, asking for a new number each time through. The program should continue to run until a user enters Q/q. 

  loop do
    input_string = nil 
    number_of_lines = nil 
    
    loop do 
      puts "How many output lines do you want?" \ "Enter a number >= 3 (Q to Quit): "
      
      input_string = gets.chomp.downcase 
      break if input_string == 'q' 
      
      numbers_of_lines = input_string.to_i 
      break if number_of_lines >= 3 
      
      puts "You must enter 3 or more lines!"
    end 
    
      break if input_string == 'q' 

      while numbers_of_lines > 0 
        puts "Launch school is the best!"
        numbers_of_lines -= 1 
      end 
    end

  
  #10 Write a program that requests 2 integers, adds the  and then displays the result. Insist that one of them is positive and one negative. Do not check the +, - requirement until both of them have been entered, start over if requirement is not met. 

  def valid_number?(number_string)
    number_string.to_i.to_s == number_string && number_string.to_i != 0 
  end 

  def read_number 
    loop do
      puts "Please enter a positive or negative integer. Remember no decimals please: "
      number = gets.chomp 
      return number.to_i if valid_number?(number)
      puts "Invalid output, Only non-zero integers are allowed please!"
    end
  end

  first_number = nil 
  second_number = nil 

  loop do
    first_number = read_number
    second_number = read_number 
    break if first_number * second_number < 0 
    puts "Sorry. One integer must be positive, one must be negative!"
    puts "Please try again."
  end 

  sum = first_number + second_number 
  puts "#{first_number} + #{second_number} = #{sum}" 

