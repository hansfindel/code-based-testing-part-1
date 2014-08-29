require "./helper_spec"

# last one - test code and refactor
RSpec.describe Course do
    # valid creations - factory
    context "Grade value changes" do
        it "should need a change on the grading" do
            course = FactoryGirl.build(:bad_course)
            puts "course: #{course.passing}"
            expect(course.need_to_fix_grades?).to eq(true)
        end
    end

    context "Grades fixer" do   
        it "grade's should allow instantiation with token" do
            course = FactoryGirl.build(:bad_course)
            course.fix_grades
            expect(course.need_to_fix_grades?).to eq(false)
        end
    end 

    
end

# factories 
# refactoring 
# #expects 
# module-extensions 