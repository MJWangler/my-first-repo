  arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees'] 

  # 15.1 Delete all words that begin with "s" in the array

  arr.delete_if { |word| word.start_with?("s") }

  # 15.2 Then recreate arr and get rid of all words that start with "s" or starts with "w" 

  arr.delete_if { |word| word.start_with?("s", "w") } 

