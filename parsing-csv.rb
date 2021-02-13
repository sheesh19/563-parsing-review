require 'csv'
require 'pry'

filepath = 'characters.csv'

## PARSE CSV

# CSV.foreach(filepath) do |row|
#   # p row
#   puts "#{row[0]} | #{row[1]} | #{row[2]}"
# end


## IF WE WANT OUR HEADERS

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# CSV.foreach(filepath, csv_options) do |row|
#   # p row
#   puts "#{row['Name']}, a #{row['Type']} character from #{row['Origin']}"
# end


## STORING CSV

# csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

# characters = [
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
# ]

# CSV.open(filepath, 'wb', csv_options) do |csv|
#   csv << ['Name', 'Type', 'Origin']

#   characters.each do |character|
#     csv << ["#{character[:name]}", "#{character[:type]}", "#{character[:origin]}"]
#   end
# end
