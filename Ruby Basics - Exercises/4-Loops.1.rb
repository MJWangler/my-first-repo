  #1 Modify the infinite loop to stop after the first iteration 

  loop do 
    puts 'Just keep printing...'
    break 
  end 

  #Putting a break will make a loop automatically exit the program and not continue. 


  #2 Modify the code so that the nested loops both stop after each first iteration. 

  loop do 
    puts 'This is the outer loop.'
    loop do 
      puts 'This is the inner loop.'
        break
    end 
    break
  end 

  puts "This is outside all loops." 


  #3 Modify the code so that it iterates 5 times. 

  iterations = 1 

  loop do 
      puts "Number of iterations = #{iterations}"
      iterations += 1 
      break if iterations > 5 
  end 
  

  #4 Modify the code below so the loop stops iterating when the user inputs 'yes' 

  loop do 
    puts 'Should I stop looping?'
    answer = gets.chomp
    break if answer == 'yes'
    puts 'Incorrect answer. Please answer "yes".'
  end 


  #5 Modify the so "Hello!" is printed 5 times. 

  say_hello = true 
  count = 0
  
  while say_hello 
    puts 'Hello!'
    count += 1 
    say_hello = false if count == 5  
  end 

  
  #6 Print 5 random numbers between 0-99. 

  numbers = []

  while numbers.size < 5 #while loops will iterate until false 
    numbers << rand(100)
  end 

  puts numbers 

  
  #7 Modify the code so it counts up instead of down

  count = 0 

  until count == 10 #until loops will iterate until true 
      puts count 
      count += 1
  end 

  
  #8 Given the array, print out each one with an until loop 

  numbers = [7, 9, 13, 25, 18]
  
  count = 0 
  until count == number.size
    puts numbers[count]
    count += 1 
  end 


  #9 Modify the code so it only outputs i, if i is a odd number 

  for i in 1..100  #Two dot is inclusive range, three dot is exclusive
    puts i if i.odd?   
  end 

  # or 

  for i in 1..100 
    puts i if i % 2 != 0 
    
    
  #10 Use a for loop to greet each friend individually 
    
  friends = ['Sarah', 'John', 'Hannah', 'Dave']
    
    for friend in friends 
      puts "Hello, #{friend}!"
    end 
    
  