### Price Combinations

## Requirements: 
# Write a program which will process the data listed below. 
# The data must be placed into a csv file and read from it.
# The first line of the csv file is the target price and the following lines are menu items you could buy.
# The program should then find a combination of dishes that has a total of exactly the target price. If there is no solution found, then the program should print that there is no combination of dishes that is equal to the target price. 
# The program must run with different data files generated by us in the same format, so provide instructions on how to run the program from command line with command line parameters to read alternative input files.

## Here are some sample data values: 

# Target price, $15.05
# mixed fruit,$2.15
# french fries,$2.75
# side salad,$3.35
# hot wings,$3.55
# mozzarella sticks,$4.20
# sampler plate,$5.80



###Decompostion

#research how to import and read a csv file in ruby
#seperating target price from data 
#clean up data
#research method for summing


# while index2 < characters.length 
#   if characters.include?("$") == true
#     characters.delete("$") 
#     index2 += 1
#   else
#     index2 +=1
#   end
# end

##

##Working Through

require 'csv'

data = CSV.read("sample.csv")
index = 0


while index < data.length 
  string = data[index][1]
  characters = string.split("")
  characters.delete_at(0)
  string = characters.join
  data[index][1] = string.to_f
  index +=1
end

target_price = data[0][1]
data.delete_at(0)

numbers = []
index = 0
while index < data.length 
  numbers << data[index][1]
  index +=1
end

p numbers
p target_price
p data



###Solution

# Read the prices.csv file
# https://www.rubyguides.com/2018/10/parse-csv-ruby/
require "csv"
data = CSV.read("prices.csv")
pp data

# Store the target price from the first row of data
# (strip out spaces and dollar signs from price string and convert to number)
# https://stackoverflow.com/questions/19637677/how-to-delete-specific-characters-from-a-string-in-ruby
target_price = data[0][1]
target_price = target_price.strip.gsub("$", "").to_f
pp target_price

# Convert the remaining price strings to numbers
menu_items = []
index = 1 # Skip the header row
while index < data.length
  row = data[index]
  name = row[0]
  price = row[1].strip.gsub("$", "").to_f
  menu_items << [name, price]
  index += 1
end
pp menu_items

# Find the number of the first item that adds up to the target price
name = menu_items[0][0]
price = menu_items[0][1]
quantity = 0
current_total = quantity * price
while current_total < target_price
  quantity += 1
  current_total = quantity * price
end
quantity = quantity - 1 # the loop goes one step too far
current_total = quantity * price
puts "Target: #{target_price}, Item: #{name}, Quantity: #{quantity}, Total: #{current_total}"

# To avoid decimal issues, store all prices as integer cents
target_price = (target_price * 100).to_i
menu_items = menu_items.map { |menu_item| [menu_item[0], (menu_item[1] * 100).to_i] }
pp target_price
pp menu_items

# Instead loop through each item and see if it's price divides into the target price
# If there is no remainder, then it is a valid combination
menu_items.each do |menu_item|
  name = menu_item[0]
  price = menu_item[1]
  if target_price % price == 0
    quantity = target_price / price
    puts "#{quantity} x #{name} adds up to the target_price"
  end
end




