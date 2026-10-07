# frozen_string_literal: true

puts "Body mass index calculator"
puts
puts "Categories:"
puts "Severe thinness - below 16"
puts "Moderate thinness - 16 to 17"
puts "Mild thinness - 17 to 18.5"
puts "Normal - 18.5 to 25"
puts "Overweight - 25 to 30"
puts "Obese class I - 30 to 35"
puts "Obese class II - 35 to 40"
puts "Obese class III - over 40"
puts
print "Enter your height in cm: "

height = gets.chomp.to_f

print "Enter your weight in kg: "

weight = gets.chomp.to_f
bmi = weight / ((height / 100)**2)

puts "Your body mass index is: #{bmi}."
