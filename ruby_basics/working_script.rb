def break_line
    puts ' '
end

# variables y clases
# variables simples, strings, arreglos y hash

num = 5
str = "String"
arr = [1,2,3,4,5,6,7,8,9]
hsh = {:key => "value"}
hsh[:key2] = "value2"


puts ""
print ""

break_line
# iteradores
array = [1,2,3,4,5,6,7,8,9]

array.each do |num|
	puts "num: #{num}"
end
mapa = array.map do |num|
	puts "map: #{num}"
	num * num
end

break_line
# map, reduce, select, collect, reject... 
odds = array.reject do |num|
	num % 2 == 0
end

odds.each do |num|
	puts "odd-num: #{num}"
end

break_line
# clase Human que salude y tenga edad
# clase Student, humano que puede estar estresado
# ejemplo usando las clases
class Human
	def initialize name
		@name = name
	end
	def salute 
		puts "Hi, my name is #{@name}"
	end
end
gert = Human.new "Gert"


class Student < Human 
end
jose = Student.new "Jose"
jose.salute

break_line
# ejecutar un código con un bloque 

def print_numbers_by_condition(array)
	array.each do |num|
		yield num
	end
end

print_numbers_by_condition(array) do |num|
	puts num * num if num % 2 == 0 
end

break_line
# lambdas

def print_numbers_by_condition_lambda(a, b, f)
	f.call(a, b)
end

l = lambda {|a,b| puts (a + b)}
print_numbers_by_condition_lambda(5, 6, l)

break_line
# methods, sort 


break_line
# everything is an object! - what is 1 and '1'

