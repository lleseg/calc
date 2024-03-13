puts "Palíndromos"
puts
print "Ingresa la palabra a revisar si es palíndromo: "

palabra = gets.chomp.to_s

if palabra.downcase == palabra.downcase.reverse
  puts "La palabra #{palabra} es un palíndromo."
else
  puts "La palabra #{palabra} no es un palíndromo."
end
