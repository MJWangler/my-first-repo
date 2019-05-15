  #Write a program that checks if the sequence "lab" exists in the following strings 
  
  "laboratory" 
  "experiment" 
  "Pans Labyrinth" 
  "elaborate" 
  "polar bear" 
  
  def check_in(word)
    if /lab/ =~ word 
      puts word 
    else
      puts "No match"
    end
  end

  check_in("laboratory")
  check_in("experiment")
  check_in("Pans Labyrinth")
  check_in("elaborate")
  check_in("polar bear")