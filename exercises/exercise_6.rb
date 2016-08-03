require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`

@store1.employees.create(first_name: "Isaac", last_name: "Yoon", hourly_rate: 26)
@store1.employees.create(first_name: "Vishal", last_name: "Tawari", hourly_rate: 82)
@store1.employees.create(first_name: "Adrian", last_name: "Manteza", hourly_rate: 66)
@store1.employees.create(first_name: "Michael", last_name: "Longauer", hourly_rate: 95)

@store2.employees.create(first_name: "Paul", last_name: "de Bruyn", hourly_rate: 70)
@store2.employees.create(first_name: "Chris", last_name: "Buscarino", hourly_rate: 89)
@store2.employees.create(first_name: "Thomas", last_name: "Hamilton", hourly_rate: 45)
@store2.employees.create(first_name: "Sergio", last_name: "Oliviera", hourly_rate: 27)

puts @store1.employees.count
puts @store2.employees.count