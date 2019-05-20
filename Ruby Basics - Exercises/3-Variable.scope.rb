  #1 
  
  a = 7

  def my_value(b)
    b += 10
  end

  my_value(a)
  puts a 

  # => 7 - this is because a is established outside of the method, this method does not mutate the caller so a remains unchanged here 

  
  #2  

  a = 7

  def my_value(a)
    a += 10
  end

  my_value(a)
  puts a 

  # => 7 - Same as the previous example, despite a being the same character used within the method, the established outside value is unchanged 

  
  #3 

  a = 7

  def my_value(b)
    a = b
  end

  my_value(a + 5)
  puts a

  # => 7 - the local variable inside of the my_value method definition is unable outside of the method, so again a is unchanged 

  
  #4 

  a = "Xyzzy"

  def my_value(b)
    b[2] = '-'
  end

  my_value(a)
  puts a

  # => Xy-zy - similar to number 1, when working with a fixnum no changes can be made to a this way. Numbers are immutable, strings are mutable. 
  
  
  #5 

  a = "Xyzzy"

  def my_value(b)
    b = 'yzzyX'
  end

  my_value(a)
  puts a

  # => Xyzzy - a and b are completely different variables. Assigning a and then defining a method for b will not reflect a change to 'a'


  #6 

  a = 7 

  def my_value(b)
    b = a + a 
  end 

  my_value(a)
  puts a 
  
  # => ERROR. This method only knows itself relative to variable 'b', it is not aware of 'a'. In Ruby, methods are entirely self-contained. 

  
  #7 
  
  a = 7 
  array = [1, 2, 3]

  array.each do |element| 
    a = element 
  end 

  puts a

  # => 3 - Blocks have different scoping rules than methods with arguements. We are able to access a within this block and reassign it. This outputs the last value of the array. Understanding the locale variable scoping rules of blocks if applied here. 

  #8 

  array = [1, 2, 3]

  array.each do |element|
    a = element
  end

  puts a
  
  # => Raises an exception/error message. Given the removal of the initialization of local variable a, local variable a is not defined in the proper scope to get a proper return. Since a is initialized within the block passed to the each method, the expression a = element is the first. 

  
  #9 

  a = 7
  array = [1, 2, 3]

  array.each do |a|
    a += 1
  end

  puts a
  
  # => 7 - shadowing occurs here. This occurs when a block argument hides a local variable that is defined outside of a block. a += 1 has no effect here 

  
  #10 
  
  a = 7
  array = [1, 2, 3]

  def my_value(ary)
    ary.each do |b|
      a += b
    end
  end

  my_value(array)
  puts a
  
  # => "a at the top level is not visible inside the invocation of the each method with a block because the invocation of each is inside my_value, and method definitions are self-contained with respect to local variables. Since the outer a is not visible inside the my_value method definition, it isn't visible inside the method invocation with a block." 