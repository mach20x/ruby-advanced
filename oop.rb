# class Table
#   attr_accessor :num_legs
#
#   def initialize(num_legs)
#         @tabletop = []
#         @num_legs = num_legs
#     end
#
#
#     def put_on(something)
#         @tabletop << something
#     end
#     def look_at
#         @tabletop
#     end
#     # def num_legs=(new_number_of_legs)
#     #     @num_legs= new_number_of_legs
#     # end
# end
#
# a_table = Table.new 4
# a_table.put_on 1
# a_table.put_on 2
# puts a_table.num_legs
#
# p a_table.look_at
# puts "This table has #{a_table.num_legs} legs!"
# puts "actually I want to chop off a leg"
# a_table.num_legs = 3
# puts "This table now has #{a_table.num_legs} legs"

# class Person
# attr_accessor :name
# attr_accessor :hair_color
# attr_accessor :sing
#
#   def initialize(name, hair_color, sing)
#         @name = name
#         @hair_color = hair_color
#         @sing = sing
#     end
#   end
#
# class Wyncoder < Person
#   attr_accessor :code
#   def code
#     code = "I am coding!"
#   end
# end
#
# walter = Wyncoder.new("walter", "blonde", "can sing")
#
#
#
# sandy = Person.new("brown", "can sing", "sandy")
# p walter.sing
# # p sandy.hair_color
# # p sandy.sing
# # p sandy.name
# p sandy.code


class Table
  @@next_table_id = 1
  attr_reader :id
    def self.has_legs?
        true
    end
    def self.next_table_id
    @@next_table_id
    def initialize
  	 @id = @@next_table_id
  	 @@next_table_id += 1
     def change_next_id(next_id)
    @@next_table_id = next_id
     end
     def preview_next_id
    @@next_table_id
     end
    end
  end
end

puts Table.has_legs?
p Table.next_table_id
t = Table.new
p t.id

t2 = Table.new
p t2.id
t2.change_next_id 100

puts "The next id back at the factory is #{t2.preview_next_id}"
