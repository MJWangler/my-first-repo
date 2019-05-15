  #6 What does this error message tell you? ArgumentError: wrong number of arguments (1 for 2)
    # from (irb):1:in `calculate_product'
    # from (irb):4
    # from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

  # This method tells us that we have defined a method parameter to input a specific number of arguments, and our current input does not match 
  # In this specific case, (1 of 2) tells us that we need two arguments and have only provided one