# frozen_string_literal: true

dial_book = {
  "buenos_aires" => "11",
  "mendoza" => "261",
  "puerto_madryn" => "280",
  "rosario" => "341",
  "santa_fe" => "342",
  "parana" => "343",
  "chapuy" => "3462",
  "chabas" => "3464",
  "cordoba" => "351",
  "la_rioja" => "380"
}

def get_city_names(cities)
  cities.keys
end

def get_area_code(cities, searched_city)
  city = cities[searched_city]
  return "#{searched_city} does not exist!" if city.nil?

  "The area code for #{searched_city} is #{city}"
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  user_input = gets.chomp.downcase
  break unless user_input == "y"

  puts get_city_names(dial_book)

  puts "Enter your city:"
  selected_city = gets.chomp.downcase
  puts get_area_code(dial_book, selected_city)
end
