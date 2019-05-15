  #6 The code ran below displays TypeError: no implicit conversion of String into Integer
  # from (irb):2:in `[]='
  # from (irb):2
  # from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
  # How do you fix this? 

  name = ['bob', 'joe', 'susan', 'margaret']
  names['margaret'] = 'jody'

  # Fix by changing 'margaret' into 3. This tells the computer to return the 3rd index as it does not         # understand 'margaret' in this syntax. Arrays are indexed with integers, NOT STRINGS! 

  names[3] = 'jody'  # => ["bob", "joe", "susan", "jody"]