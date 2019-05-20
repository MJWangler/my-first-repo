  #1 Write a loop that prints numbers 1-5 and whether the number is even or odd? 
  
  count = 1 

  loop do 
    if count % 2 == 0
      puts "#{count} is even!"
    else 
      puts "#{count} is odd!" 
  end 

  break if count == 5 
    count += 1 
  end 


  #2 Modify code so that loop has a break between 1-10? 

  loop do 
    number = rand(100)
      puts number 
    
    if number(1..10) 
      break
    end
  end 


  #3 Use if/then statement, run a loop that prints "The loop was processed!" one time if process_the_loop = true. Print "The loop wasn't processed1" if process_the_loop = false. 

  process_the_loop = [true, false].sample 

  puts process_the_loop 

  if process_the_loop == true
    loop do 
      puts "The loop was processed!"
      break 
    end 
      else  
      puts "The loop wasn't processed!"
      
    end

  
  #4 Modify the code below so that when the user enters 4, the loop stops and prints "That's correct!" If not 4, priWrong answer. Try again!" 

  loop do 
    puts 'What does 2 + 2 equal?'
    answer = gets.chomp.to_i 
    
    if answer == 4 
      puts "That's correct!"
    else 
      puts "Wrong answer. Try again!"
    
    end 
  end 

 
  #5 Modify the code so the user's input gets added to the array, no more than 5 numbers long. 

  numbers = [] 

  loop do
    puts 'Enter a number:'
    input = gets.chomp.to_i 
    
    numbers.push(input)
    break if numbers == 5
  end 
  puts numbers 

  
  #6 Use loop to remove each name, stop the loop once the array is empty. 

  names = ['Sally', 'Joe', 'Lisa', 'Henry']

  loop do 
    puts names.shift #.pop could be used to have the same effect but in reverse 
    break if names.size == 0
  end 

  
  #7 Modify the block so that it prints the current numbers and stop iterating when current number == 2 

  5.times do |index| 
    puts index 
    break if index == 2
  end


  #8 Using next, modify the code below so that it only prints even numbers 

  number = 0 

  until number == 10 
    number += 1 
    next if number % 2 != 0
    puts number 
  end 

  
  #9 Modify the code below, use next, so that the loop iterates until either number_a or number_b == 5. Print "5 was reached!" before breaking 

  number_a = 0
  number_b = 0

  loop do
    number_a += rand(2)
    number_b += rand(2)
    
    next unless number_a == 5 || number_b == 5
  
    puts "5 was reached!"
    break
  end

  #10 Use a while loop to print "Hello!" twice 

  def greeting 
    puts 'Hello!'
  end 

  number_of_greetings = 2 

  while number_of_greetings > 0 
    greeting 
    number_of_greetings -= 1
  end 

  