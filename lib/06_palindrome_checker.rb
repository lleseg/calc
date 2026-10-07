# frozen_string_literal: true

puts "Palindromes"
puts
print "Enter the word to check: "

word = gets.chomp.to_s

transformed_word = word.downcase.gsub(" ", "")

if transformed_word == transformed_word.reverse
  puts "The word #{word} is a palindrome."
else
  puts "The word #{word} is not a palindrome."
end
