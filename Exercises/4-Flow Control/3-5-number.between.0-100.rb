#3 Write a program that takes a number from a user between 0 and 100 and reports back whether the number is between 0-50, 51-100 or greater than 100 

  puts "Please enter a number between 0 and 100." 
  number = gets.chomp.to_i

  if number < 0 
    puts "You can't enter a negative number!"
  elsif number <= 50 
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 51 and 100" 
  else 
    puts "#{number} is above 100"
  end 




#5 Rewrite the above as a case statement. Wrap this new case statement in a method. 

  def evaluate_num(number)
    case 
    when number < 0 
      puts "You can't enter a negative number!"
    when number <= 50 
      puts "#{number} is between 0 and 50"
    when number <= 100 
      puts "#{number} is between 51 and 100"
    else 
      puts "#{number} is above 100"
    end 
  end

# or 

  def evaluate_num(number)
    case number 
      when 0..50 
        puts "#{number} is between 0 and 50"
      when 51..100
        puts "#{number} is between 51 and 100" 
    else 
      if number < 0 
        puts "You can't enter a negative number!" 
    else 
      puts "#{number} is above 100" 
      end
    end
  end

  puts "Please enter a number between 0 and 100"
  number = gets.chomp.to_i 

  evaluate_num(number)