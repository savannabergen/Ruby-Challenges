# Savanna Bergen WEBD-3011


# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

# Here is an example of building a sentence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]}"

# Output Carl Sagan Sentence
puts "Task 1: "
puts "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"

# Create an array of hashes named 'ghosts'
ghosts = [
            {:name => 'Inky', :age => '4', :loves => 'reindeers', :net_worth => '25'},
            {:name => 'Pinky', :age => '5', :loves => 'garden tools', :net_worth => '14'},
            {:name => 'Binky', :age => '7', :loves => 'ninjas', :net_worth => '18.03'},
            {:name => 'Clyde', :age => '6', :loves => 'yarn', :net_worth => '0'}
         ]
# Output Ghosts Sentence
puts "Task 2: "
ghosts.each do |ghost|
    ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
    ghost_info += "loves #{ghost[:loves]} and "
    ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
    puts ghost_info
end

puts "Task 3: "
require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
got_it = dog_breeds['message']
for dog in got_it
  puts "#{dog}"
end

puts "Task 4: "

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
winnipeg_data = JSON.parse(response) # Convert JSON data into Ruby data.

result = winnipeg_data.select{|a| a["common_name"].include?("ash") }
task_4 = result.count
puts "Ash Trees: #{task_4}"