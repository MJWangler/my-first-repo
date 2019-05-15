#2 Write a method that takes a string as an argument, method should return a new all-caps verison of the string ONLY IF LONGER THAN 10 CHARACTERS 

  def caps(string)
    if string.length > 10 
      string.upcase 
  else
    string
    end
  end 
  
  puts caps("Matt Wang")
    # => matt wang
    # => nil 
    
  puts caps("Matthew Wangler")
    # => MATTHEW WANGLER 
    # => nil 
  