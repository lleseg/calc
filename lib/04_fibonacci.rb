puts "Fibonacci"
puts
print "Ingresá el límite de la serie: "

limite = gets.chomp.to_i

fibonacci_anterior = 0
fibonacci_actual = 1

while fibonacci_actual < limite
  puts fibonacci_actual

  # fibonacci_temp = fibonacci_anterior + fibonacci_actual

  # fibonacci_anterior = fibonacci_actual

  # fibonacci_actual = fibonacci_temp
  fibonacci_anterior, fibonacci_actual = fibonacci_actual, fibonacci_actual + fibonacci_anterior
end
