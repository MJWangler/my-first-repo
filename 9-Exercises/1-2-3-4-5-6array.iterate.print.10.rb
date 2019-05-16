  # 1 Use the each method to iterate over array 1-10, print each value 

  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  arr.each { |number| puts number}
  
  # or 
  
  arr.each do |number|
    puts number 
  end 

  # 2 print out values that are greater than 5 only using the select method 

  arr.each { |number| puts number if number > 5}

  # or 

  arr.each do |number|
    if number > 5
      puts number
    end
  end

  #3 Use select method to extrat all odd numbers into new array 

  new_array = arr.select { |number| % 2 != 0}

  # or 

  new_array = arr.select do |number| 
    number % 2 != 0 
  end 

  #4 Append "11" to the end of the original array, prepend "0" to the begining 
  #Append 11
  arr.push(11) 

  # or 

  arr << 11
  
  #Prepend 0 
  arr.unshift(0)

  #5 Get rid of "11" and append a "3" 
  #Remove from the end 
  arr.pop

  #Append 
  arr << 3
  
  # or 

  arr.push(3)

  #6 Get rid of duplicates w/o specifically removing any one value 

  #Not destructive

  arr.uniq 

  #Destructive - mutates the caller 

  arr.uniq! 

