require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

hash = ingredient.values[0]

hash.each do |element|
    Ingredient.create(name: element.values.first)
end

# hash.each do |element|
#     p element.values.first
#     # puts element.values
# end
