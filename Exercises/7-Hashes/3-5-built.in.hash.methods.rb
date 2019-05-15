  #3 

  opposites = {positive: "negative", up: "down", right: "left"}

  # Loops through a hash and prints all of the keys 

  opposites.each_key { |key| puts key}
    
  # => positive up right 

  # Loops through a hash and prints all of the values 

  opposites.each_value {|value| puts value}

  # => negative down left 

  # Loops through a hash and prints both keys and values 

  opposites.each {|key, value| puts "The opposite of #{key} is #{value}"}

  #5 has_value? method - used to determine if a Hash has a specific value in it 

  has_value? 
  
  if opposites.has_value?("negative")
    puts "Got it!"
  else 
    puts "Nope!"
  end 