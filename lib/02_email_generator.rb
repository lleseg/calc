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

raw_last_name = gets.chomp.to_s

last_name = remove_spaces(raw_last_name)

print "Enter the name of the company you work for: "

raw_company = gets.chomp.to_s

company = remove_spaces(raw_company)

puts "Your generated email is #{initials.downcase}.#{last_name.downcase}@#{company.downcase}.com"
