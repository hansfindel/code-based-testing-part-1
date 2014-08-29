class GradesManager
    
    def self.manage course
        all  = course.@students
        pass = course.passing
        (all - pass).each do |student| # all student pass! 
            while !student.passing?
                some_grade = student.grades[Random.rand(student.grades.length)] # no random should be allowed
                some_grade.val += 1 if some_grade.val < 7 # this validation belongs to grade
            end
        end
    end
end
