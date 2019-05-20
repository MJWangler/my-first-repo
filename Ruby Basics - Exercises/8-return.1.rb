  #1 What will the code print? 
  def meal 
    return 'Breakfast'
  end 

  puts meal 

  # => "Breakfast" - every method returns the evalulated result, or return value of the last line excuted 


  #2
  def meal 
    'Evening'
  end 

  puts meal 

  # => "Evening" is the only line in the method 


  #3 
  def meal 
    return 'Breakfast'
    'Dinner'
  end 

  puts meal 

  # => "Breakfast" - When return is executed, it tells the method to end. Even though Dinner is the last line, the return in front of breakfast overrides. 

  
  #4 
  def meal 
    puts 'Dinner'
    return 'Breakfast'
  end 

  puts meal 

  # => "Dinner" <linebreak> "Breakfast". Both are printed because there are two puts in the code. 


  #5 
  def meal 
    'Dinner'
    puts 'Dinner'
  end 

  p meal 

  # => "Dinner" <linebreak> "nil". Both are printed because we are using two different print methods. #puts always returns nil and #p prints Dinner. 


  #6 

  def meal 
    return 'Breakfast'
    'Dinner'
    puts 'Dinner'
  end 

  puts meal 

  # => "Breakfast" - in this example, the return is explicit before breakfast. We also use the same print method twice, so one output here. 


  #7 
  def count_sheep
    5.times do |sheep| 
      puts sheep
    end
  end

  puts count_sheep 

  # => 0 1 2 3 4 5 <linebreaks between each> - this uses the Integer#times method, within the count_sheep method. #times starts from 0 so this example counts from 0 to 4. #times method returns the initial value of the integer, so in this case a 6th number is printed. 


  #8 
  def count_sheep
    5.times do |sheep|
      puts sheep
    end
    10
  end 

  puts count_sheep 

  # => 0 1 2 3 4 10 <linebreaks between each> - Same as previous with 1 exception. Integer#times is no longer the last line in the defined method, in this case 10 becomes the implict return value as it is the last line in the method. 

  
  #9 
  def count_sheep
    5.times do |sheep| 
      puts sheep
      if sheep >= 2
        return 
      end
    end
  end

  p count_sheep 

  # => 0 1 2 nil <linebreaks between each> - in this case, the Integer#times is given a condition to stop if sheep >= 2. That means 0 1 2 will be returned. The explicit return on the last line of the code has no information with it, so that will return "nil". Using 'p' instead of 'puts' enables us to see this return of nil at the end. 

  
  #10 
  def tricky_number 
    if true 
      number = 1
    else 
      2
    end
  end
  
  puts tricky_number 

  # => 1 - Ruby returns most things as "True" by default, so there is nothing else in this code that would deviate from that. 
