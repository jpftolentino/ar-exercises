require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Input a store name:  "
storename = $stdin.gets.chomp
storename = Store.new(name: storename)
pp storename
puts storename.valid?
# puts storename.errors[:annual_revenue]
# puts storename.errors[:mens_apparel]
# puts storename.errors[:womens_apparel]
puts storename.errors.messages
