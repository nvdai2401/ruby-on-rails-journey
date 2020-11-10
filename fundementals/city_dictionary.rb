dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.each do |city_name, area_code|
    puts "City name: #{city_name.capitalize} - Area code: #{area_code}"
  end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each do |city_name, area_code|
    if key == city_name
      puts "City name: #{city_name.capitalize} - Area code: #{area_code}"
      return
    end
  end
  puts "Not found!"
end
 
# get_area_code(dial_book, "newyorkg")
# Execution flow
loop do
  execution_name = ""
  begin
    puts "Please enter the execution name (names or code): "
    execution_name = gets.chomp
    if execution_name != "names" && execution_name != "code"
      puts "Not found execution. Please try again!"
    else
      break
    end
  end while execution_name == "names" || execution_name == "code"
  
  name = ""
  if execution_name == "code"
    puts "Please enter the city name: "
    name = gets.chomp.downcase
  end
  
  case execution_name
  when "names"
    get_city_names(dial_book)
  when "code"
    get_area_code(dial_book, name)
  end

  puts "Press n to quit or eny key to continue"
  input = gets.chomp
  break if input == 'n'
end
 