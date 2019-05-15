  cat = {name: "whiskers"}
  weight = {weight : "10 lbs"}
  
  puts cat.merge(weight)
  
  puts cat 
    # => {:name=>"whiskers"}
  puts weight 
    # => {:weight=>"10 lbs"}
  # The above example is not mutative, not destructive, it does not mutate the caller. The original key-value is left intact despite calling merge method 

  puts cat.merge!(weight)
  
  puts cat 
    # => {:name=>"whiskers", :weight=>"10 lbs"}
  puts weight 
    # => {:weight=>"10 lbs"}