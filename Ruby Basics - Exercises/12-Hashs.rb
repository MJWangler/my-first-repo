  #1 Create a hash that includes: Type: sedan, Color: blue & mileage: 80_000 
  cars = { type: 'sedan',
            color: 'blue',
              mileage: 8E4} 
              
  #2 Using the code from above, add the key :year and the value "2003" to the hash 
  car[:year] = 2003
  
  # => cars = { type: 'sedan',
            color: 'blue',
              mileage: 8E4, 
                year: 2003 
                }
  
  
  #3 Using the same hash table used previous, delete the mileage. 
  car.delete[:mileage]
  
  # => cars = { type: 'sedan',
                color: 'blue', 
                year: 2003 
                }
    
  
  #4 Select and print the value 'blue' from the hash. 
  puts car[:color]
  
  
  #5 Use the Hash#each method to iterate over each of the numbers and print out each element's key/value pair 
  numbers = {
    high:   100,
    medium: 50,
    low:    10
    }
  
  numbers.each do |key, value| 
    puts "A #{key} number is #{value}."
  end 
  

  #6 Use Enumberable#map to iterate over numbers and return an Array of each number divided by 2, called half_numbers print via #p. 
  numbers = {
  high:   100,
  medium: 50,
  low:    10
    }

  half_numbers = numbers.map do |key, value| 
    value / 2
  end 

  p half_numbers 

  
  #7 Use Hash#select to iterate over numbers and return a hash containing only key-value pairs less than 25. Assign return hash to low_numbers, and #p
  numbers = {
  high:   100,
  medium: 50,
  low:    10
    }
  
  low_numbers = numbers.select do |key, value| 
                    value < 25
                  end 
  p low_numbers

  
  #8 Modify the code from #7 to use the destructive version of #select called #select! 
   numbers = {
  high:   100,
  medium: 50,
  low:    10
    }
  
  low_numbers = numbers.select! do |key, value| 
                    value < 25
                  end 
  p low_numbers
  p numbers 


  #9 Create a nested hash using - {type: sedan, color: blue, year: 2003} & {type: pickup, color: red, year: 1998}
  cars = {
          car: {type: 'sedan', color: 'blue', year: 2003},
          truck: {type: 'pickup', color: 'red', year: 1998}
    }


  #10 Rewrite car as a nested array containing the same key-value pairs. 
  car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
      }
  
  car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]




