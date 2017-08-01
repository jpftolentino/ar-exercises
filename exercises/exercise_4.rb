require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
    name: 'Surrey',
    annual_revenue: 224000,
    mens_apparel: false,
    womens_apparel: true
)
Store.create(
    name: 'Whistler',
    annual_revenue: 1900000,
    mens_apparel: true,
    womens_apparel: false
)
Store.create(
    name: 'Yaletown',
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
)

@mens_stores = Store.where('mens_apparel = ?', true)
@mens_stores.each do |men_store|
    men_store_name = men_store[:name]
    men_store_rev = men_store[:annual_revenue]
    puts "name: #{men_store_name} annual revenue: $#{men_store_rev}"
end

@womens_stores = Store.where('womens_apparel = ?', true).where('annual_revenue < ?', 1000000)
@womens_stores.each do |women_store|
    women_store_name = women_store[:name]
    women_store_rev = women_store[:annual_revenue]
    puts "name: #{women_store_name} annual revenue: $#{women_store_rev}"
end