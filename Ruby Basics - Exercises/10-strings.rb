  #1 Create an empty string using the String class and assign it to a variable. 
  
  empty_string = String.new 
  
  # or 
  
  empty_string = ''


  #2 Modify the code below so that double quotes are used instead of single quotes 

  puts 'It\'s now 12 o\'clock.' #This is what you should do if you want to include the same type quotes inside your string. 
  
  puts "It's now 12 o'clock." #Ruby recognizes both types of strings. 
  
  #%Q is alternative to double quoted strings: %Q(It's now 12 o'clock) => "It's now 12 o'clock"
  #%q is alternative to single quoted strings: %q(It's now 12 o'clock) => 'It's now 12 o'clock'

  
  #3 Compare strings. 
  name = 'Roger'

  name == 'RoGeR'
  name == 'DAVE'

  # Compare strings case insensitively. 

  puts name.casecmp('RoGeR') == 0 # The only truthy return is here. 
  puts name.casecmp('DAVE') == 0 

  
  #4 Modify the code so the name is printed with "Hello, !" 
  name = 'Elizabeth' 

  puts "Hello, " + name + "!"

  # or 

  name = 'Matthew'
  
  puts "Hello, #{name}!" 
  
  #Double quotes allow the usage of string interpolation - allows us to invoke a variable, method within a string. Ruby will automatically call to_s too 


  #5 Combine the two names together to form a full name and assign that value to a variable named full_name and print it 
  first_name = 'John'
  last_name = 'Doe'
  
  full_name = first_name + ' ' + last_name 
  puts full_name 


  #6 Capitilze the value of state and then print the modified value. Note that state should have the modified value both before and after printing 
  state = 'tExAs'
  
  state.capitalize!
  puts state 

  #Passing state variable through the #capitalize! method mutates the caller, so the before and after will have a capital T and lowercase exas. 

  
  #7 Invoke a destructive method on greeting so that goodbye! is printed instead of Hello! 
  greeting = 'Hello!'
  
  greeting.gsub!('Hello!', 'Goodbye')
  puts greeting 

  #gsub! can be used to replace specific characters in a string by modifying the original object. gsub can also be non-destructive 

  
  #8 split the alphabet by individal characters and print each character  
  alphabet = 'abcdefghijklmnopqrstuvwxyz' 
  
  puts alphabet.split('')

  
  #9 Use array#each to print the flural of each word in words 
  words = 'car human elephant airplane'

  words.split(' ').each do |word|
    puts word + 's'
  end 


  #10 Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if the colors includes the color 'purple' and print false if it doesn't. 
  colors = 'blue pink yellow orange'

  puts colors.include?('yellow')
  colors.include?('purple') 
