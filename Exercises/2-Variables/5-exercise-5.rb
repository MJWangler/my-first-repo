  #Look at this program 

  x = 0 
  3.times do 
    x += 1 
  end 
  puts x 
  
  # => 3, because we told the program to add 1 to x 3 times, 0 + 1 + 1 + 1 = 3 
  
  #and... 
  
  y = 0 
  3.times do
   y += 1
   x = y 
  end
  puts x 
  
  # => Traceback (most recent call last):
       # 2: from C:/Ruby25-x64/bin/irb.cmd:19:in `<main>'
       # 1: from (irb):7
# NameError (undefined local variable or method `x' for main:Object)

  # x was created within the scope of a do/end block, this means it's not available outside of the block. Inner scopes can access variables initialized in # outer scopes BUT NOT VICE VERSA