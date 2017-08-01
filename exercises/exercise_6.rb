require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
    first_name: "Khurram", 
    last_name: "Virani", 
    hourly_rate: 700
)

@store2.employees.create(
    first_name: "Khurram", 
    last_name: "Virani", 
    hourly_rate: 30
)

1.upto(10) do
    @store1.employees.create(
        first_name: Faker::DragonBall.character,
        last_name: Faker::Name.last_name,
        hourly_rate: Faker::Number.between(40,60)
    )
end

1.upto(10) do
    @store2.employees.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        hourly_rate: Faker::Number.between(40,200)
    )
end