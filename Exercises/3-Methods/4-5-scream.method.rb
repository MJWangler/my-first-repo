#4 What will this code print to the screen? 

  def scream(words)
    words = words + "!!!!" 
    return
    puts words 
  end 

  scream("Yippeee")

  # => nil. 

  # The above method encompasses a 'return' function, so this entails that the last expression in the method will be printed 
  # puts always returns nil so it can be said that "nothing" will be returned 



  #5 Edit the above so that it does print words to the scream 

  def scream(words)
    words = words + "!!!!"
    p words 
  end

  scream("Yippeee") 
  # "Yippeeeee!!!!" 
  # => "Yippeee!!!!"