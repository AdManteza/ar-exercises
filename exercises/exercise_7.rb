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

# will not create a new employee
@store1.employees.create(first_name: "Ginger", last_name: "Guo", hourly_rate: 300)
@store1.employees.create(hourly_rate: 100)

# will create a new employee
@store1.employees.create(first_name: "Shaun", last_name: "Lloyd", hourly_rate: 50)

# will not create a new store
@store10 = Store.create(name: "Penshoppe", annual_revenue: 224000, mens_apparel: false, womens_apparel: false)
puts "#{@store10.errors.messages}"

puts "Enter a new store name"
store_name = gets.chomp

@new_store = Store.create(name: store_name)

puts "#{@new_store.errors.messages}"