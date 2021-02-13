require 'nokogiri'
require 'open-uri'

## NOKOGIRI FOR XML

# file      = File.open('characters.xml')
# document  = Nokogiri::XML(file)

# document.root.xpath('character').each do |character|
#   name        = character.xpath('name').text
#   type  = character.xpath('type').text
#   origin      = character.xpath('origin').text

#   puts "#{name}, a #{type} character from #{origin}"
# end


## NOKOGIRI FOR API

# ingredient = 'avocado'
# url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)
# # p html_doc
# html_doc.search('.standard-card-new__article-title').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
# end


# What is the .standard-card-new__article-title ?
