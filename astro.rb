require 'rest-client'
require 'nokogiri'

puts "whats is your astrological sign?"
sign = gets.chomp

url = "http://www.astrology.com/horoscope/daily/#{sign}.html"
puts = "getting data from #{url}"

response = RestClient.get(url)
html = response.body

selector=".page-horoscope-text"


data = Nokogiri::HTML(html)
elements = data.css(selector)


elements.each do |title|
puts title.text.strip
end


