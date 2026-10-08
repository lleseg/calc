# frozen_string_literal: true

puts "Fibonacci"
puts
print "Enter the limit of the series: "
limit = gets.chomp.to_i

previous_number = 0
current_number = 1

while current_number < limit
  puts current_number
  previous_number, current_number = current_number, current_number + previous_number
end
