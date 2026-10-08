# frozen_string_literal: true

def remove_spaces(raw_text)
  words = raw_text.split
  text_without_spaces = +""
  words.each { |word| text_without_spaces << word }
  text_without_spaces
end

puts "Email generator"
puts

print "Enter your first name: "
first_names = gets.chomp.to_s.split
initials = +""
first_names.each { |name| initials << name.chr }

print "Enter your last name: "
last_name = remove_spaces(gets.chomp.to_s)

print "Enter the name of the company you work for: "
company = remove_spaces(gets.chomp.to_s)

puts "Your generated email is #{initials.downcase}.#{last_name.downcase}@#{company.downcase}.com"
