require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
average_revenue = Store.average(:annual_revenue)
milion_revenue = Store.where('annual_revenue > 1000000').count

puts "-------------------"
puts "Company total revenue: $#{total_revenue}"
puts "-------------------"
puts "Company average revenue: $#{average_revenue}"
puts "-------------------"
puts "Number of stores make over $1M annual revenue: #{milion_revenue} stores"