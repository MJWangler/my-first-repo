#Write a program that greets the user, if the user writes "#{name!}" have the computer yell back 

def prompt(message)
  puts("=> #{message}")
end 

prompt("Hello, is what is your name?")
name = gets.chomp 

if name.include?('!')
  prompt("HELLO #{name.upcase}!! WHY ARE YOU SCREAMING AT ME?")
else 
  prompt("Hello #{name}.")
end 
