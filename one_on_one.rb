# i = 0
# while i <= 25
#   if i.odd?
#   sq_root = Math.sqrt(i)
#   puts "the square root of #{i} equals #{sq_root}"
#   end
#   i += 1
# end


# def element_index(element, my_array)
#   my_array.each do |x|
#   if element == x
#     return my_array.index(x)
#   end
#  end
#   -1
# end
#
# puts element_index("b", ["a", "b", "c"])
# puts element_index("hello", ["a", "b", "c"])

class Person
  @@everyone = []
  attr_accessor :name, :hair_color

  def self.everyone
    @@everyone
  end

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def save
    @@everyone << @name
  end
  def sing
    puts " #{@name} is singing "
  end
end

sandy = Person.new("sandy", "brown")
sandy.save
puts Person.everyone


# class QuickFox
#
# def jumped_over(who, what)
#   end
# end
# lazy_dog = []
# daisy_log =[]
# quick_fox = QuickFox.new
#
# quick_fox.jumped_over(lazy_dog, daisy_log)

# class Wyncoder
#   def initialize(name)
#     @name = names
#   end
#   def to_s
#     @name
#   end
#   def inspect
#     @name
#   end
# end
# puts Wyncoder.to_s
# p Wyncoder.to_s
# puts Wyncoder.inspect
# p Wyncoder.inspect
