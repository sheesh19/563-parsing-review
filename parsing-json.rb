require 'json'
require 'open-uri'
require 'pry'

filepath = 'characters.json'


## PARSING JSON

# serialized_characters = File.read(filepath)

# characters = JSON.parse(serialized_characters)
# p characters

# What kind of data do we get?



## STORING JSON

# characters = { characters: [
#   {
#     name: 'Harry',
#     type: 'Wizard',
#     origin: 'London'
#   },
#   {
#     name: 'Frodo',
#     type: 'Hobbit',
#     origin: 'Shire'
#   }
# ]}

# File.open(filepath, 'wb') do |file|
#   file.write(JSON.generate(characters))
# end


## JSON API

# url = 'https://api.github.com/users/sheesh19'
# user_serialized = open(url).read

# # p user_serialized
# user = JSON.parse(user_serialized)
# # p user
# puts "#{user['name']} - #{user['url']}"














