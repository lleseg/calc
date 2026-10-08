# frozen_string_literal: true

puts "US grade converter"
puts
print "Enter your numeric grade (1 to 10): "
grade = Float(gets.chomp, exception: false)

us_grade = case grade
           when 9..10 then "A"
           when 8..9 then "B"
           when 7..8 then "C"
           when 6..7 then "D"
           when 0..6 then "F"
           end

if us_grade
  puts "Your US letter grade would be #{us_grade}."
else
  puts "Invalid grade."
end
