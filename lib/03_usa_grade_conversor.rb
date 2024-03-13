puts "Conversor de notas a USA"
puts
print "Ingresá tu nota numérica (1 al 10): "

nota = gets.chomp.to_f

nota_usa = case nota
when 9..10 then "A"
when 8..9 then "B"
when 7..8 then "C"
when 6..7 then "D"
when 5..6 then "E"
when 0..5 then "F"
else "Nota inválida."
end

puts "Tu nota en USA sería la letra #{nota_usa}."
