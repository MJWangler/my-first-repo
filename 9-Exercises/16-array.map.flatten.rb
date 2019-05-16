  #16 Take a, and turn into a new array that consists of strings containing one word 
  #Hint map, flatten and split methods will help 
  
  a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
  a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     a = a.map { |pairs| pairs.split }
     a = a.flatten
     p a    