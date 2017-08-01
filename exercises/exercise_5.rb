require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum_revenue = Store.sum('annual_revenue')
puts @sum_revenue
@avg_revenue = @sum_revenue / Store.count
puts @avg_revenue
puts Store.where('annual_revenue > ?', 1000000).count