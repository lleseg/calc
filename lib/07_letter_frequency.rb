# frozen_string_literal: true

def letter_frequency(word)
  letters = ("a".."z").to_a + ("A".."Z").to_a

  frequency = {}

  word.each_char do |character|
    if letters.include?(character)
      if frequency.key?(character)
        frequency[character] += 1
      else
        frequency[character] = 1
      end
    end
  end

  frequency
end

puts "Letter frequency"
puts
print "Enter the word to analyze: "

word = gets.chomp.to_s

result = letter_frequency(word)

puts result
