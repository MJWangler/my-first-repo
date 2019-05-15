  #6 When running the code below, you an error message. Define the error message and determine how to fix it. 

    def equal_to_four(x)
      if x == 4 
        puts "yup"
      else 
        puts "nope"
      end
  
    equal_to_four(5)

  # => exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end 
  # The above method returns the error because it is expecting an addtional 'end' line. The result is the method 'equal_to_four' is not closed/defined 
  
  