# Savanna Bergen WEBD-3011

puts "Task 4: "
require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
uri = URI(url)
response = Net::HTTP.get(uri)
winnipeg_data = JSON.parse(response) # Convert JSON data into Ruby data.

puts "#{winnipeg_data["common_name"]}"
