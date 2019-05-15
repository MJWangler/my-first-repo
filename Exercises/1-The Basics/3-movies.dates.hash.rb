#3 Use a hash to store a list of movie titles and the year they came out. Then use puts command to print out the year of each movie. 
movies = { jaws: 1975, 
            anchorman: 2004, 
            man_of_steel: 2013, 
            a_beautiful_mind: 2001, 
            the_evil_dead: 1981 }
            
puts movies[:jaws]
    # => 1975
puts movies[:anchorman]
    # => 2004
puts movies[:man_of_steel]
    # => 2013
puts movies[:a_beautiful_mind]
    # => 2001
puts movies[:the_evil_dead]
    # => 1981