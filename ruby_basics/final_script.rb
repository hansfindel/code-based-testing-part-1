def break_line
    puts ' '
end

# variables y clases
# variables simples, strings, arreglos y hash

one = 1
word = "word"
array = []
array << one
array << word 
hash = {"one" => one, "otra cosa" => word}
hash["one"] = array

# iteradores
puts "Iterators:"
puts "1 upto 5"
1.upto(5) do |i|
    puts i 
end
break_line
puts "each"
[1,2,3,4].each do |i|
    puts i
end
break_line
puts "for"
for i in [2,3,5,7] do 
    puts i
end
break_line

# map, reduce, select, collect... 
array = [1,2,3,4,5,6,7,8,9]

odds  = array.select{|n| n if (n % 2 == 1)}
puts "odds = #{odds}"
even  = array.reject{|n| n if (n % 2 == 1)}
puts "even = #{even}"

squares = array.map{ |n| n*n }
puts "squares = #{squares}"
_squares = array.collect{ |n| n*n }
puts "squares = #{_squares}"


sum = array.reduce{ |sum,x| sum + x }
puts "sum = #{sum}"
_sum = array.inject(:+)
puts "sum = #{_sum}"

break_line
# clase Human que salude y tenga edad
# clase Student, humano que puede estar estresado
# blocks 

class Human
    @name = ""
    @age  = nil
    
    def initialize params
        @name = params[:name]
        @age  = params[:age]
    end 

    def underage?
        @age > 0 and @age < 18
    end

    def salute 
        puts "Hola, soy #{@name}"
        puts "y tengo #{@age} años de edad" if @age  
    end
end

class Student < Human 
    @stressed = false

    def study_for_test
        @stressed = true
        puts "Estudiar!"
    end

    def chill
        @stressed = false
    end

    def salute 
        super
        puts "y #{@stressed ? '' : 'no '}estoy estresado"
    end
end

# ejemplo usando las clases
human = Human.new({name: "Hashes", age: 25})
student = Student.new({name: "Stud", age: 22})
human.salute 
student.salute
student.study_for_test
student.salute


# ejecutar un código con un bloque 
def test_block_method
     break_line
     puts "You are in the method"
     yield
     puts "You are again back to the method"
     yield
end

test_block_method { puts "You are in the block" }

test_block_method do |var|
    puts "Wololoh"
end

break_line

# lambdas
puts "calculation"
def calculation(a, b, operation)
    operation.call(a, b)
end

puts calculation(5, 6, lambda { |a, b| a + b }) # addition


def calculation_with_implicit_block_passing(a, b)
 yield(a, b)
end

puts calculation_with_implicit_block_passing(2, 11) { |a, b| a * b }

break_line



break_line
# methods, sort 
puts student.class.to_s 
puts student.class.class.to_s
puts student.class.class.class.to_s
puts student.class.class.class.methods.sort.to_s
puts student.class.class.ancestors.to_s

break_line
# everything is an object! - what is 1 and '1'
puts "Clase de 1: #{1.class }"
puts "Métodos de 1: #{1.methods.sort.to_s}"

puts "Clase de '1': #{'1'.class }"
puts "Métodos de '1': #{'1'.methods.sort.to_s}"
