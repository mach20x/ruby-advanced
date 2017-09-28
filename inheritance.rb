class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end

class Car < Vehicle
end

class Motorcycle < Vehicle
end

# print Car.ancestors
# puts Car.superclass
#
# print Motorcycle.ancestors
# puts Motorcycle.superclass

car = Car.new
puts car.engine

motorcycle = Motorcycle.new
puts motorcycle.engine

# puts Car.class
# print Car.methods
#
# my_car = Car.new
# puts my_car.class
# print my_car.methods
