# frozen_string_literal: true

puts "Conversor de notas a USA"
puts
print "Ingresá tu nota numérica (1 al 10): "

nota = Float(gets.chomp, exception: false)

nota_usa = case nota
           when 9..10 then "A"
           when 8..9 then "B"
           when 7..8 then "C"
           when 6..7 then "D"
           when 5..6 then "E"
           when 0..5 then "F"
           end

if nota_usa
  puts "Tu nota en USA sería la letra #{nota_usa}."
else
  puts "Nota inválida."
end
