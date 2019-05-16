  #12 Given the following data, write a program that moves the information from the array into an empty hash, apply to correct person 
  
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  
  contacts["Joe Smith"][:email] = contact_data[0][0]
  contacts["Joe Smith"][:address] = contact_data[0][1]
  contacts["Joe Smith"][:phone] = contact_data[0][2]
  contacts["Sally Johnson"][:email] = contact_data[1][0]
  contacts["Sally Johnson"][:address] = contact_data[1][1]
  contacts["Sally Johnson"][:phone] = contact_data[1][2]

  

  #13 Using hash just created, demonstrate how to access Joe's email and Sally's phone number? 

  puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
  # => joe@email.com 

  puts "Sally's phone number is: "#{contacts["Sally Johnson"][:phone]}


  #14 Loop or iterate over the contacts, and populate the associated data from the contact_data array. 
  # Hint - shift, first methods will help 

  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}
  fields = [:email, :address, :phone]

  contacts.each do |name, hash|
    fields.each do |field|
      hash[field] = contact_data.shift
    end
  end

  # We can work with multiple entries in the contact hash like so 

  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  fields = [:email, :address, :phone]

  contacts.each_with_index do |(name, hash), idx|
    fields.each do |field|
      hash[field] = contact_data[idx].shift
    end
  end