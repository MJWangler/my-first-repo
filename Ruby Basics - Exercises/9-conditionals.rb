  #1 Write an 'if' statement that prints "The sun is so bright" if sun == 'visible'. 
  sun = ['visible', 'hidden'].sample 

  if sun == 'visable'
    puts "The sun is so bright!"
  end 

  
  #2 Write an 'unless' statement that prints "The clouds are blocking the sun!" unless sun == 'visible'
  sun = ['visible', 'hidden'].sample 

  unless sun == 'visible'
    puts "The clouds are blocking the sun!"
  end 

  
  #3 Write an if statement that prints "The sun is so bright!" if sun == 'visible'. Also write an unless statement that prints "The clouds are blocking the sun!" unless sun == 'visible'. 

  #This is just the previous problem with one-line formatting. 
  sun = ['visible', 'hidden'].sample

  puts "The sun is so bright!" if sun == 'visible'
  puts "The clouds are blocking the sun!" unless sun == 'visible'

  #The two above are basically performing the exact same action in this example. 


  #4 Ternary operator example 
  boolean = [true, false].sample
  
  boolean ? puts("I'm true!") : puts("I'm false!") #most useful for simple conditions with 2 possible outcomes 

  
  #5 
  number = 7 

  if number
    puts "My favorite number is #{number}."
  else 
    puts "I don't have a favorite number."
  end 

  # => "My favorite number is 7." - Every expression evaluates to true when used in a condition. The only two exceptions are false and nil. 

  
  #6 Write a case statement that prints "Go!" if stoplight == 'green', "Slow down!" if stoplight == 'yellow' and "Stop!" if stoplight == 'red' 
  stoplight = ['green', 'yellow', 'red'].sample 

  case stoplight 
    when 'green'
      puts 'Go!'
    when 'yellow'
      puts 'Slow down!'
    else
      puts 'Stop!'
  end 
      
  #Used when comparing multiple values to a single case. 

  
  #7 Convert the example from above into an 'if' statement 
  stoplight = ['green', 'yellow', 'red'].sample 

  if stoplight == 'green'
    puts "Go!"
  elsif stoplight == 'yellow'
    puts "Slow down!"
  else 
    puts "Stop!"
  end 

  
  #8 Write an if statement that returns "Be productive!" if status == 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a avariable and print the variable. 
  status = ['awake', 'tired'].sample 
  variable = nil 

  alert == if status == 'awake'
              "Be productive!"
            else 
              "Go to sleep!"
        end 

  puts alert


  
  #9 Fix the code below so that "Other numbers are cool too!" gets a chance to be executed. 
  number = rand(10)

  if number == 5
    puts '5 is a cool number!'
  else 
    puts "Other numbers are cool too!"
  end 

  # = is assignment and == comparison. Do not mix these two up! 


  #10 Reformat this case statement so it only takes up 5 lines 
  stoplight = ['green', 'yellow', 'red'].sample 

  case stoplight 
    when 'green' then puts 'Go!'
      when 'yellow' then puts 'Slow down!'
      else                puts 'Stop!'
  end
      
  #then is only required after when, not else! 
    
      
      

  