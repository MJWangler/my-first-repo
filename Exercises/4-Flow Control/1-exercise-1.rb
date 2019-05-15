  #1 Will the following expression return true or false (boolean)

  (32 * 4) >= 129 
    # => false - 128 is not greater than nor equal to 129 
    
  false != !true 
    # => false - the expression above is claiming that false IS NOT EQUAL TO, NOT TRUE. Well not true = false, so this will return false 
    
  true == 4 
    # => false - true is not a fixed number and it does not equal 4. It should also be noted that Ruby will not let you assign a value to 'true' 
    
  false == (847 == '847')
    # => true - the left side of the equation is evaluated first, so the computer is looking for the right to be false... 
    # 847 == '847' is indeed false because 847 as a fixnum is not the same as '847' as a string 
    # After the right side if evaluated, it  can simplied as false == false so it returns true 
  
  (!true || (!(100/5) == 20) || ((328/4) == 82))
    # => true - The (||) operator acts as an "or" function, in that 1 of the 3 arguments placed must be true for the return to be "true"
    # The left side is a simple "not true" as the (!) operator acts as "not". The middle reads "not 20 = 20" so this is also false.
    # The final part is what enables the return to be "true" because it can be simplied as "82 = 82" 
  