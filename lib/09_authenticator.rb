# frozen_string_literal: true

users = [
  { username: "bulbasaur", password: "password1" },
  { username: "charmander", password: "password2" },
  { username: "squirtle", password: "password3" },
  { username: "ash", password: "password4" },
  { username: "professor_oak", password: "password5" }
]

puts "Welcome to the authenticator"
40.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If the password is correct, you will get back the user object"

attempts = 1

while attempts < 5
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  user = users.find { |user| user[:username].to_s == username }

  if !user.nil? && user[:password] == password
    puts user
    attempts = 0
  else
    puts "Credentials were incorrect!"
    attempts += 1
  end

  puts "Press n to quit or any other key to continue:"
  user_input = gets.chomp.downcase

  break if user_input == "n"
end

puts "You have exceeded the number of attempts, bye!" if attempts == 5
