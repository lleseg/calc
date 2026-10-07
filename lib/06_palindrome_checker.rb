# frozen_string_literal: true

puts "Palindromes"
puts
print "Enter the word to check: "

word = gets.chomp.to_s

if word.downcase == word.downcase.reverse
  puts "The word #{word} is a palindrome."
else
  puts "The word #{word} is not a palindrome."
end
