require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"
puts "\n----- Before destroy : #{Store.all.count} -----"

# Your code goes here ...
@store3 = Store.find_by(id: 3)
@store3.destroy

puts "\n----- Stores after delete : #{Store.all.count} -----"
