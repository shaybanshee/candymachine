puts "Welcome to Ada's Computer Candy Machine!"
puts "(All candy provided is virtual.)"

puts "How much money do ya got?"

money_response = gets.chomp.to_f

puts "#{money_response}, that's all?"

puts "Well, lemme tell ya what we got here."

# array of arrays
# candy = [
#   ["A", 0.65, "Twix"],
#   ["B", 0.50, "Chips"],
# ]
# candy.select{ |c| c[0] == "A" }

# array of hashes
jerky = [
  {
  	code: "A",
  	price: 0.65,
  	name: "Twix",
  },
  {
  	code: "B",
  	price: 0.50,
  	name: "Chips",
  },
  {
  	code: "C",
  	price: 0.75,
  	name: "Nutter Butter",
  },
  {
  	code: "D",
  	price: 0.65,
  	name: "Peanut Butter Cup",
  },
  {
  	code: "E",
  	price: 0.55,
  	name: "Juicy Fruit Gum",
  },
]

# candy.select{ |c| c[:code] == "A" }

# candies.each do |candy|
#   if candy[:code] == "A"
#   	return candy
#   end
# end

# hash
# candy = {
#   "A" => {
#   	price: 0.65,
#   	name: "Twix",
#   },
#   "B" => {},
# }

# candy["A"]

# puts "A $0.65 Twix"
# puts "B $0.50 Chips"
# puts "C $0.75 Nutter Butter"
# puts "D $0.65 Peanut Butter Cup"
# puts "E $0.55 Juicy Fruit Gum"

jerky.each do |candy|
	puts "#{candy[:code]} $#{candy[:price]} #{candy[:name]}" # string interpolation
end

puts "So, What'll ya have?"

letter_response = gets.chomp

puts "Thanks for purchasing candy through us."

# if letter_response == "A"
# 	change = money_response - 0.65
# 	puts "Please take your candy, and your #{change}!"
# end

jerky.each do |candy|
	puts candy
  if candy[:name] == letter_response # if "A" == letter_response, if "B" == letter_response
  	puts "Found a match!"
  	puts candy[:code]
  	puts candy[:price]
  	change = money_response - candy[:price]
  	puts change
  end
end

# Please take your candy, and your $0.25 change!