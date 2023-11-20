require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
=begin
1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
2. Add the following code directly inside the Employee model (class): `belongs_to :store`
3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
=end
 
Store.has_many(:employees)
Employee.belongs_to(:store)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Wonderland", hourly_rate: 15)
@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store2.employees.create(first_name: "Bob", last_name: "Burger", hourly_rate: 20)
@store2.employees.create(first_name: "Petra", last_name: "Wallace", hourly_rate: 100)