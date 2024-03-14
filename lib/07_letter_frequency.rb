def frecuencia_letras(palabra)
  caracteres = ('a'..'z').to_a + ('A'..'Z').to_a

  frecuencia = {}

  palabra.each_char do |caracter|
    if caracteres.include?(caracter)
      unless frecuencia.key?(caracter)
        frecuencia[caracter] = 1
      else
        frecuencia[caracter] += 1
      end
    end
  end

  return frecuencia
end

puts "Frecuencia de las letras"
puts
print "Ingresa la palabra a analizar: "

palabra = gets.chomp.to_s

resultado = frecuencia_letras(palabra)

puts resultado
