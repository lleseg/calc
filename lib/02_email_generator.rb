# frozen_string_literal: true

def remover_espacios_texto(texto_crudo)
  texto_arreglo = texto_crudo.split

  texto_sin_espacios = +""

  texto_arreglo.each { |t| texto_sin_espacios << t }

  texto_sin_espacios
end

puts "Generador de email"
puts
print "Ingresá tu nombre: "

nombre = gets.chomp.to_s.split

iniciales_nombre = +""

nombre.each { |n| iniciales_nombre << n.chr }

print "Ingresá tu apellido: "

apellido_crudo = gets.chomp.to_s

apellido = remover_espacios_texto(apellido_crudo)

print "Ingresá el nombre de la empresa donde trabajás: "

empresa_crudo = gets.chomp.to_s

empresa = remover_espacios_texto(empresa_crudo)

puts "Tu email generado es #{iniciales_nombre.downcase}.#{apellido.downcase}@#{empresa.downcase}.com"
