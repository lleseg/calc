# frozen_string_literal: true

print "Ingresá el primer número: "
n1 = gets.chomp.to_f
puts "Operaciones disponibles: 1 - Suma, 2 - Resta, 3 - Multiplicación, 4 - División"
print "Ingresá la operación: "
operacion = gets.chomp.to_i
print "Ingresá el segundo número: "
n2 = gets.chomp.to_f

case operacion
when 1
  resultado = n1 + n2
  mensaje = "La suma de ambos números resulta: #{resultado}"
when 2
  resultado = n1 - n2
  mensaje = "La resta de ambos números resulta: #{resultado}"
when 3
  resultado = n1 * n2
  mensaje = "La multiplicación de ambos números resulta: #{resultado}"
when 4
  resultado = n1 / n2
  mensaje = "La división de ambos números resulta: #{resultado}"
else
  mensaje = "Error, ingresó un operador inexistente"
end

puts mensaje
