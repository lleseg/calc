# frozen_string_literal: true

print "Enter the first number: "
n1 = gets.chomp.to_f
puts "Available operations: 1 - Addition, 2 - Subtraction, 3 - Multiplication, 4 - Division, 5 - Modulus"
print "Enter the operation: "
operation = gets.chomp.to_i
print "Enter the second number: "
n2 = gets.chomp.to_f

case operation
when 1
  result = n1 + n2
  message = "The sum of both numbers is: #{result}"
when 2
  result = n1 - n2
  message = "The difference of both numbers is: #{result}"
when 3
  result = n1 * n2
  message = "The product of both numbers is: #{result}"
when 4
  if n2.zero?
    message = "We can't divide by zero"
  else
    result = n1 / n2
    message = "The quotient of both numbers is: #{result}"
  end
when 5
  if n2.zero?
    message = "We can't divide by zero"
  else
    result = n1 % n2
    message = "The modulus of both numbers is: #{result}"
  end
else
  message = "Error: that operation does not exist."
end

puts message
