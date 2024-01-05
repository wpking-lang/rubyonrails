USERNAME =  "makeshift"
PASSWORD =  "tempor"

puts "Welcome to GATEKEEP -  a simple password manager in Ruby"
puts "Please sign in to continue"
print "Enter username: "

user_username = gets.chomp
#print user_username
# p user_username  - adds new line input to the username 
# (makeshift\n) not similar to makeshift

if user_username == USERNAME # some condition is true
    print "Enter password: "
    user_password = gets.chomp
else
    # execute some other chunk of code
    puts "Invalid Username. Try again"
    exit 
end

# if user_password == PASSWORD # this if can also be nested to previous if 
#     print "welcome back, #{user_username}"
# else
#     puts "Invalid Username. Try again"# execute some code
# end

unless user_password != PASSWORD
    print "welcome back, #{user_username}! \n"
    puts "What would you like to do?" 
    puts "1. Add new service credentials"
    puts "2. Retrieve existing service credentials"
    puts "3. Exit"
else
    puts "Invalid Password. Try again"# execute some code
    exit
end

case user_selection
when "1"
    puts "this will create new service credentials"
when "2"
    puts "This will retrieve existing credentials"
else
    "Exiting the program."
    exit
end