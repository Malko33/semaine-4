require "open-uri"
require "json"


loop do
puts "Entrez un numero de Code Barre:"
bar_code = gets.chomp

url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read
data = JSOn.parse(json)

puts data ["produc"]["product_name"]
end
