  #7 Write program that iterates over array, builds new array that is result of incredmenting each value by 2. Use p instead of puts. 

  arr = [1, 2, 3, 4, 5]
  new_arr = []
  
  arr.each do |n|
    new_arr << n + 2 
  end 

  p arr 
  p new_arr 

  # or 

  arr = [1, 2, 3, 4, 5]
  
  new_arr = arr.map do |n| 
    n + 2
  end 

  p arr 
  p new_arr