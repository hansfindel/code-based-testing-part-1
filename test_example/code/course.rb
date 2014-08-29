class Course

    def initialize
        @students = []
    end

    def add_student student
        @students << student
    end

    def passing
        @students.select{ |student| student.passing? }
    end

    def need_to_fix_grades?
        if @students.length > 0
            (passing.length.fdiv @students.length) < 0.5
        else
            false
        end
    end

    def fix_grades
        # bad version!
        # (@students - passing).each do |student|
        #     while !student.passing?
        #         some_grade = student.grades[Random.rand(student.grades.length)]
        #         some_grade.val += 1 if some_grade.val < 7
        #     end
        # end

        # PENDING - refactor:
        GradesManager.manage self 
    end

end