puts "Calculadora de masa corporal"
puts
puts "Categorías:"
puts "Re flaco - menor a 16"
puts "Flaco - entre 16 y 17"
puts "Algo flaco - entre 17 y 18.5"
puts "Normal - entre 18.5 y 25"
puts "Sobrepeso - entre 25 y 30"
puts "Obeso C1 - entre 30 y 35"
puts "Obeso C2 - entre 35 y 40"
puts "Obeso C3 - mayor a 40"
puts
print "Ingresa tu altura en cm: "

altura = gets.chomp.to_f

print "Ingresa tu peso en kg: "

peso = gets.chomp.to_f
bmi = peso / (altura / 100) ** 2

puts "Tu índice de masa corporal es: #{bmi}."
