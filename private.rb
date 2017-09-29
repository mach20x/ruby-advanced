# class Table
# 	def a_public_method
# 		a_private_method
# 	end
#
# 	private
#
# 	def a_private_method
# 	end
# end
#
# t = Table.new
# t.a_public_method
# t.a_private_method


# class Bank
# 	def transfer
# 		withdraw
# 		deposit
# 	end
#
# 	private
#
# 	def withdraw; end
#
# 	def deposit; end
# end

# class Parent
#   private
#   def whisper_secret
#     puts "parent's secret"
#   end
# end
#
# class Child < Parent
#   def expose_secret
#     whisper_secret
#   end
# end
#
# c = Child.new
# c.expose_secret

# class Parent
#   protected
#   def whisper_family_secret
#     puts "shhh!"
#   end
# end
#
# class Child < Parent
#   def chat(other)
#     other.whisper_family_secret
#   end
# end
#
# class Stranger
#   def chat(other)
#     other.whisper_family_secret
#   end
# end
#
# jo = Child.new
# juha = Child.new
#
# jo.chat(juha)
# # juha.chat(jo)
# # > shh!
# skeev = Stranger.new
# skeev.chat.chat(jo)
# class Person
# 	def speak; "I'm a person"; end
# end
#
# class Parent < Person
# 	def speak
# 		super + " who is a parent"
# 	end
# end
#
#
# class Parent
# 	def whoami; puts "I'm a parent"; end
# end
#
# class Child < Parent
# 	def whoami; puts "I'm a child"; end
# end
#
# p = Person.new
# p p.speak
# c = Parent.new
# p c.speak
#
#
# c = Child.new
# c.whoami

# class Parent
# 	def speak1(arg); puts arg; end
# end
#
# class Child < Parent
# 	def speak2
# 		speak1 "I'm a child"
# 	end
# end
#
# class Child < Parent
# 	def speak; super "I'm a child"; end
# end

# p = Parent.new
# p.speak "I'm a parent"
# c = Child.new
# c.speak "I'm a child"
# c.speak

# class Table
#   attr_accessor :num_legs
# def initialize(num_legs)
#   raise "Halt!"
#   if num_legs > 0
#     @num_legs = num_legs
#   else
#     raise "Invalid number of legs."
#   end
# end
# end
#
# table = Table.new(-1)
# puts table.num_legs
# puts "Hello world"

# def add_two(number)
#   unless number.respond_to? :+
#     raise ArgumentError, "Invalid argument"
#   end
#   number + 2
# end
#
# begin
#   puts add_two({})
# rescue ArgumentError => e
# puts "You: #{e.message}. Me: Sorry!"
# begin
#   puts add_two("")
# rescue ArgumentError
#   puts "Sorry! My bad."
# rescue => e
#   puts "What?!"
#   puts e.backtrace
# end

# def a
#   b
# end
#
# def b
#   c rescue nil
# end
#
#
# def c
#   d
# end
#
# def d
#   raise "Boom!"
# end
#
# begin
#   a
# rescue => e
#   puts e.backtrace
# end


# end
# puts "And we're back!"

# begin
#   1/0
# rescue ZeroDivisionError
#   puts "I can't divide by zero"
# end
class StandardError
end

class MyError < StandardError
  raise "invalid argument"
end

def add_two(number)
  unless number.respond_to? :+
    raise ArgumentError, "Invalid argument"
  end
  number + 2
end

puts add_two("")
