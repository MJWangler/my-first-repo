  #1 Write a method called print_me that prints "I'm printing within the method!" when invoked. 
  
  def print_me
    puts "I'm printing within the method!"
  end 

  print_me 


  #2 Define a method named print_me that returns "I'm printing the return value!" when using 'puts print_me' 

  def print_me
    print_me = "I'm printing the return value"
  end 

  puts print_me 


  #3 Write two methods, one that returns "Hello" and one that returns "World." Then print both strings using puts, combining them into one

  def hello 
    "Hello"
  end 

  def world 
    " World."
  end 

 puts "#{hello}#{world}"
    
  
  #4 Write a method called greet that invokes the methods from the previous example shown below 

  def hello 
    "Hello"
  end 

  def world 
    "World"
  end 

  def greet 
    hello + ' ' + world 
  end 

  puts greet 


  #5 Write a method called car, that takes two arguements and prints a string containing the value of both arguements. 

  def car(string1, string2)
    string1 +  string2 
  end 

  car('Totoya', ' Corolla')


  #6 The variable below will be randomly assigned true/false. Write a method named time_of_day that prints "it's daytime!" if == true and "it's nighttime!" if != true. 

  daylight = [true, false].sample

  def time_of_day(daylight) 
    daylight ? "It's daytime!" : "It's nighttime!"
  end 

  puts time_of_day(daylight)
    

  #7 Fix the following code so that the names are printed as expected 

  def dog(name)
    puts "The dog's name is " + name
  end 

  def cat(name)
    puts "The cat's name is " + name
  end 

  dog("Spot")
  cat("Ginger")

  
  #8 Write a method that accepts one argument, but does not require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the arguement. 

  def assign_name(name = 'Bob')
    name 
  end 

  puts assign_name('Matt') == 'Matt'
  puts assign_name == 'Bob'


  #9 Write the following methods so that the boolean output == true. 

  def add(a, b)
    a + b 
  end 
  
  puts add(2, 2) == 4 
  puts add(5,4) == 9 
  
  def multiply(num1, num2)
    num1 * num2 
  end 

  puts multiply(add(2, 2), add(5,4)) == 36

  
  #10 Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method. 

  names = ['Dave', 'Sally', 'George', 'Jessica']
  activities = ['walking', 'running', 'cycling']

  def name(names)
    names.sample 
  end 

  def activity(activities) 
    activities.sample
  end 

  def sentence(name, activity) 
    puts "#{name}" + ' went' + " #{activity}" + ' today!' 
  end 


  puts sentence(name(names), activity(activities))
  

  
