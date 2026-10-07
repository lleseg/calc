# frozen_string_literal: true

def search_with_file_open(query)
  result = {}
  Dir.glob("*.txt") do |file_name|
    f = File.open(file_name)
    f.each_with_index do |line, index|
      result[index + 1] = file_name if line.include?(query)
    end
    f.close
  end
  result
end

def search_by_line(query)
  result = {}
  Dir.glob("*.txt") do |file_name|
    File.foreach(file_name).each_with_index do |line, index|
      result[index + 1] = file_name if line.include?(query)
    end
  end
  result
end

puts "Search in files"
print "Search text: "
query = gets.chomp
result = search_by_line(query)

if result.length.positive?
  result.each do |line_number, file_name|
    puts "File: #{file_name} on line number: #{line_number}"
  end
else
  puts "No matches found."
end
