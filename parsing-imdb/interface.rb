require_relative 'scraper'
require 'yaml'

# return all top 5 move details
# add each into our yaml file


puts "Fetching our urls"
urls = fetch_movie_urls

movie_results = urls.map do |url|
  puts "Scraping specific movie"
  scrape_movie(url)
end

puts "Write to yaml file"

File.open("movies.yaml", "wb") do |f|
  f.write(movie_results.to_yaml)
end

puts "Done!!"
