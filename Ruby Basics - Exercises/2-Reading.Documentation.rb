  #1 Use String#Upcase to make "xyz" all caps. #Upcase is an instance method in this case. 

  puts "xyz".upcase 

    #The above will return a new string, if we wish to modify the old string we simply add "!" to the end of .upcase! 

  #2 Add to Array, insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'

  a = %w(a b c d e) 

    #There are a few ways to do this, using an index seems to be the easiest way 

  a.insert = (3, 5, 6, 7) 
  a.insert = (-3, 5, 6, 7)

    #Negative indices will reference from the end of the array and count backwards, the end = -1. Beginning = 0. 


  #3 With the following arguements, what will each of the puts statements print out 

  s = 'abc def ghi,jkl mno pqr,stu vwx yz'
  puts s.split.inspect
    # => ["abc", "def", "ghi,", "jkl", "mno", "pqr,", "stu", "vwx", "yz"]
    #This method will split the array at each of its spaces 
  
  puts s.split(',').inspect
    # => ["abc def ghi", " jkl mno pqr", " stu vwx yz"] 
    # This method will split the array at each of its commas 

  puts s.split(',', 2).inspect
    # => ["abc def ghi", "jkl mno pqr,stu vwx yz"] 
    # The 2 will limit the 2nd output, so that the only possible return is a 2 part array 

  puts s.split(',', 1).inspect 
    # => ["abc def ghi,jkl mno pqr,stu vwx yz"] 
