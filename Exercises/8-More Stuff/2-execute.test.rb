  #2 What will this program print? Return? 

  def execute(&block)
    block
  end 

  execute { puts "Hello from inside the execute method!" }

  #The block is never activated with call method, so the method returns a Proc object and nothing is printed to the screen as a result 

  #4 Modify the code so that the block executes properly 

  def execute(&block)
    block.call
  end 

  execute { puts "Hello from inside the execute method!" } 
    # => "Hello from inside the execute method!" 
    # => Nil 

  #5 Why does this code give this error message? block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
    # from test.rb:5:in `<main>'

  def execute(block)
    block.call 
  end 

  execute { puts "Hello from inside the execute method!"}

  # The method parameter (block) is missing the & which enables a block to be passed as a parameter 

