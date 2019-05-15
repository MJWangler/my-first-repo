#What will each block of code below print to the screen? 

'4' == 4 ? puts("TRUE") : puts("FALSE")

# => FALSE - as a previous exercise displayed '4' as a string, is the not the same as 4 as a fixnum. The method defined here will evaluate whether the 
# expression is true/false on the left. Depending on the result it will return the parameter on the left (if true) or the right (if false).
# The above utilizes a ternary operator that keeps if/else statement all on one line  

x = 2 
  if ((x * 3)/ 2) == (4 + 4 - x - 3)
    puts "Did you get it right?"
  else 
    puts "Did you?"
  end 

# => "Did you get it right?" - x is defined to be 2 so we can plug in a 2 wherever we see an x to give us 
# ((2 * 3) / 2) == (4 + 4 - 2 - 3)
# (6 / 2) == (8 - 5)
# (3) == (3) 
# Since the left and right side of the equation above are both equal when x = 2, the return will be proceed after the if statement and without even evaluating the else statement. The output result would likely change if we were to change x. 



