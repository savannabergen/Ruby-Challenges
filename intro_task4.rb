# Savanna Bergen WEBD-3011

puts "Task 4: "
require 'net/http'
require 'json'
require 'pp'

words = "ash"
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
winnipeg_data = JSON.parse(response) # Convert JSON data into Ruby data.
result2 = winnipeg_data.count

result = winnipeg_data.select{|a| a["common_name"].include?("ash") }
 result1 = result.count
puts "#{result2} #{result1}"
