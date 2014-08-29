# factory_based_course_behaviour_spec.rb

require "./helper_spec"

# course unit testing should already be working
RSpec.describe "Course should be know if needs to 'fix' the grades" do

    it "when students grade go down" do
        course = FactoryGirl.build(:average_course)
        
        # add a problematic student
        student = FactoryGirl.build(:student)
        grade   = FactoryGirl.build(:med_grade)
        student.add_grade  grade
        course.add_student student
        
        expect(course.need_to_fix_grades?).to eq(false)

        # problematic student is now failing the course
        grade.val = 3
        expect(course.need_to_fix_grades?).to eq(true)
    end

    # Ejemplos más complejos podrían estar relacionados con publisher/subscriber, pase de mensajes, observers... 
    
end 
