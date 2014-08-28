class Student
	
	def initialize
		@grades = []
	end

	def grades 
		@grades
	end

	def add_grade grade 
		@grades << grade 
	end

	def average
		if @grades.length > 0
			((@grades.map(&:val).inject(0){ |sum, grade| sum += grade }) / @grades.length).to_i
		else
			-1
		end
	end

	def passing?
		average >= 4
	end

end