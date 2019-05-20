  #1 What errors does this code raise and what do they mean? 

  def find_first_nonzero_among(numbers)
    numbers.each do |n|
      return n if n.nonzero?
    end
  end

  find_first_nonzero_among(0, 0, 1, 0, 2, 0) 
    # => Wrong number of arguments, it's expecting 1 and we input 6. 
  
  find_first_nonzero_among(1)
    # => NoMethodError, since integers do not have an #each method this will not work here 


  #2 Fix the code below so it behaves as expected 

  def predict_weather
    sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
      end
    end 

  # - sunshine needs to be assigned to the boolean true/false and not strings 'true'/'false' 

  
  #3 When a user inputs 10, the return should be "The result is: 50!". Why is this code not working here? 

  def multiply_by_five(n)
    n * 5
  end

  puts "Hello! Which number would you like to multiply by 5?"
    number = gets.chomp.to_i

  puts "The result is #{multiply_by_five(number)}!"

  #all user input is a string, so we need to  convert their number to a integer in order to allow Ruby to multiply by 5. 

  
  #4 Add values 'sparky' and 'fido' to the :dog key in the hash 

  pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

  pets[:dog].push('bowser')

  p pets

  #We must take care to use the Hash#push method to add values to the key dog. Reassigning the element will reset the values entirely. 

  

  #5 We want to iterate through the numbers array and return only even numbers. Fix the code below. 
  
  numbers = [5, 2, 9, 6, 3, 1, 8]

  even_numbers = numbers.select do |n|
    n.even?
  end

  p even_numbers

  #Array#select used for selection, only returns truthy elements of the previous array. 

  
  #6 "You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: no implicit conversion of nil into String (TypeError). What is the problem and how can you fix it?"

  def get_quote(person)
    if person == 'Yoda'
      'Do. Or do not. There is no try.'
    end

    if person == 'Confucius'
      'I hear and I forget. I see and I remember. I do and I understand.'
    end

    if person == 'Einstein'
      'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    end
  end

  puts 'Confucius says:'
  puts '"' + get_quote('Confucius') + '"' 

  #Multiple ways to fix ways. One way is to add explicit return statements since the code evaluates on the first line to true/nil, if we pass 'confucius' or 'yoda' into this it's going to return nil. Nil is not your friend in this example. 
  
  def get_quote(person)
      if person == 'Yoda'
        return 'Do. Or do not. There is no try.'
      end

      if person == 'Confucius'
        return 'I hear and I forget. I see and I remember. I do and I understand.'
      end

      if person == 'Einstein'
        return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
      end
    end

    puts 'Confucius says:'
    puts '"' + get_quote('Confucius') + '"' 

  # or use an if then statement. This allows evaluation of multiple lines, if the if statement returns nil then it will enable elsif to be evaluated etc

  def get_quote(person)
    if person == 'Yoda'
      'Do. Or do not. There is no try.'
    elsif person == 'Confucius'
      'I hear and I forget. I see and I remember. I do and I understand.'
    elsif person == 'Einstein'
      'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    end
  end 

  
  #7 The output below says you have $70, however you expect to have $238. What went wrong here? 

  # Financially, you started the year with a clean slate.

  balance = 0

  # Here's what you earned and spent during the first three months.

  january = {
    income: [ 1200, 75 ],
    expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
  }

  february = {
    income: [ 1200 ],
    expenses: [ 650, 140, 320, 46.7, 122.5 ]
  }

  march = {
    income: [ 1200, 10, 75 ],
    expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
  }

  # Let's see how much you've got now...

  def calculate_balance(month)
    plus  = month[:income].sum
    minus = month[:expenses].sum

    plus - minus
  end

  [january, february, march].each do |month|
    balance = calculate_balance(month)
  end

  puts balance
  
  #We must increment the value of balance using += instead of just =. This allows us to accurately monitor the value of all the months instead of just 1 
  # - the change would be "balence += calculate_balance(month) 

  
  #8 The following code throws an error, think about what is wrong and determine how to fix it. 

  colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
  things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

  colors.shuffle!
  things.shuffle!

  i = 0
  loop do
    break if i > colors.length

    if i == 0
      puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
    else
      puts 'And a ' + colors[i] + ' ' + things[i] + '.'
    end

    i += 1
  end
  
  # The original value for i = 0 so the program will return nil. To correct this we can replace with "break if i > colors.length - 1" 
  # This only partially fixes the problem as the same error will still be raised. 

  colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
  things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

  colors.shuffle!
  things.shuffle!

  i = 0
  loop do
    break if i > things.length - 1

    if i == 0
      puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
    else
      puts 'And a ' + colors[i] + ' ' + things[i] + '.'
    end

    i += 1
  end
  
  #The above solution uses thing array to determine whether or not to break out of the loop. Since things is the shorter array, this is the correct 
  
  
  #9 Implement the method below without using #reduce nor #inject. 

    def digit_product(str_num)
      digits = str_num.chars.map { |n| n.to_i }
      product = 0

      digits.each do |digit|
        product *= digit #product = product * digit
      end

      product
    end


  p digit_product('12345')
  # expected return value: 120
  # actual return value: 0 - this is because product is initialzed to be 0 and each time we multiply by 0 we get 0. We can fix this by making product = 1

  def digit_product(str_num)
    digits = str_num.chars.map { |n| n.to_i }
    product = 1

    digits.each do |digit|
      product *= digit
    end

    product
  end


  #10 We are trying to make an RPG game, find the ERROR and determine how to fix it. 
  
  # Each player starts with the same basic stats.

  player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

  # Then the player picks a character class and gets an upgrade accordingly.

  character_classes = {
    warrior: { strength:  20 },
    thief:   { dexterity: 20 },
    scout:   { stamina:   20 },
    mage:    { charisma:  20 }
  }

  puts 'Please type your class (warrior, thief, scout, mage):'
  input = gets.chomp.downcase

  player.merge(character_classes[input])

  puts 'Your character stats:'
  puts player
  
  # We are trying to reference a value not established/initialized in our hash table. 
  
  # Each player starts with the same basic stats.

  player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

  # Then she picks a character class and gets an upgrade accordingly.

  character_classes = {
    warrior: { strength:  20 },
    thief:   { dexterity: 20 },
    scout:   { stamina:   20 },
    mage:    { charisma:  20 }
  }

  puts 'Please type your class (warrior, thief, scout, mage):'
  input = gets.chomp.downcase

  player = player.merge(character_classes[input.to_sym])

  puts 'Your character stats:'
  puts player

  #We need to convert our user input from a string to a symbol using String#to_sym. We also need to use Hash#merge! instead of Hash#merge. It is required that we mutate the caller, use a destructive method, in order to get the proper result. 