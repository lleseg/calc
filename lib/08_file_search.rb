# frozen_string_literal: true

def buscar_entero(clave)
  resultado = {}
  Dir.glob("*.txt") do |archivo|
    f = File.open(archivo)
    f.each_with_index do |linea, index|
      resultado[index + 1] = archivo if linea.include?(clave)
    end
    f.close
  end
  resultado
end

def buscar_linea(clave)
  resultado = {}
  Dir.glob("*.txt") do |archivo|
    File.foreach(archivo).each_with_index do |linea, index|
      resultado[index + 1] = archivo if linea.include?(clave)
    end
  end
  resultado
end

puts "Buscar en archivos"
print "Clave: "
clave = gets.chomp
resultado = buscar_linea(clave)

if resultado.length.positive?
  resultado.each do |clave, valor|
    puts "Archivo: #{valor} en línea número : #{clave}"
  end
else
  puts "No lo encontré."
end
