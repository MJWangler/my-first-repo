#3 Use the each_with_index method to iterate through an array that print each index value 

  top_five_teams = ["Warriors", 
                    "Rockets", 
                    "Trailblazers", 
                    "Bucks", 
                    "Raptors"]

  top_five_teams.each_with_index do |team, index| 
  puts "#{index + 1}. #{team}"
  end
