require 'open-uri'
require 'nokogiri'

require 'pry'

# open our top imdb movies list
# store our html_file & open it
# transform into Nokogiri object
# leverage .search for a specific title class on imdb page
# only want to return the top 5 as an array

def fetch_movie_urls
  url = 'https://www.imdb.com/chart/top'
  html_file = open(url, "Accept-Language" => "en").read
  html_doc = Nokogiri::HTML(html_file)
  # html_doc.search('.titleColumn')[0...5].map do |element|
    # "http://www.imdb.com#{element.children[1].attributes["href"].value}"
  # end

  html_doc.search('.titleColumn > a')[0...5].map do |element|
    "http://www.imdb.com#{element.attributes["href"].value}"
  end
end


# define scrape_movie()
# store our html_file & open it
# transform into Nokogiri object
# find items from Nokogiri & save into our hash
# should return cast / director / storyline / title / year

def scrape_movie(url)
  html_file = open(url, "Accept-Language" => "en").read
  html_doc = Nokogiri::HTML(html_file)

  {
    cast: html_doc.search('.credit_summary_item').last.children[3..7].text.split(', '),
    director: html_doc.search('.credit_summary_item').first.children[3].text,
    storyline: html_doc.search('.summary_text').first.text.strip,
    title: html_doc.search('h1').first.children.first.text[0..-2],
    year: html_doc.search('h1').first.children[1].text[1..-2].to_i
  }
end
