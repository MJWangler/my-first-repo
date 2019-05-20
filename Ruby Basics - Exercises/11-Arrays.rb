  #1 Select 'fish' from the array and assign it to the variable my_pet, and print the return value 

  pets = ['cat', 'dog', 'fish', 'lizard']

  my_pet = pets[2]

  puts "I have a pet " + my_pet + "!"

  # => "I have a pet fish!" 

  # or 

  puts "I have a pet #{my_pet}!"

  
  #2 Select 'fish' and 'lizard' from pets at the same time, assign the return to a variable and print such value. 

  pets = ['cat', 'dog', 'fish', 'lizard'] 
  
  my_pets = pets[2..3] 
  
  puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


  #3 Remove the value of 'lizard' from my_pets and then print its value. 

  pets = ['cat', 'dog', 'fish', 'lizard']
  my_pets = pets[2..3]

  my_pets.pop 

  puts "I have a pet #{my_pets[0]}!"

  
  #4 Select 'dog' from pets, add the return value to my_pets and print. 

  my_pets.push(pets[1])

  puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

  # => "I have a pet fish and a pet dog!"
  
  
  #5 Use Array#each method to iterate over each color in the array and print its value 

  colors = ['red', 'yellow', 'purple', 'green'] 

  colors.each do |color| 
    puts "I'm the color #{color}!"
  end 


  #6 Use Array#map method to return a new array with number below doubled. Name it doubled_numbers and print via #p. 

  numbers = [1, 2, 3, 4, 5]

  doubled_numbers = numbers.map do |number| 
                      number * 2 
          end 

  p doubled_numbers 


  #7 Use Array#each to iterate over each number and return a new array with only numbers divisible_by_three. Print via #p. 

  numbers = [5, 9, 21, 26, 39] 

  divisible_by_three = numbers.select do |number| 
                        number % 3 == 0 
          end 

  p divisible_by_three 


  #8 What would it look like if each name and number was placed in their own arrays within 1 nested array? 
  
  ['Dave', 7, 'Miranda', 3, 'Jason', 11] 
  
  [['Dave', 7], ['Miranda', 3], ['Jason', 11]] 


  #9 Use Array#flatten to make this array no longer nested. Then assign the flattened array to a variable called flat_favorites and #p it 

  favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]] 

  flat_favorites = favorites.flatten

  p flat_favorites 


  #10 Compare array1 and array2 and print that boolean value. 

  array1 = [1, 5, 9]
  array2 = [1, 9, 5] 

  puts array1 == array2 

  # => false 

  