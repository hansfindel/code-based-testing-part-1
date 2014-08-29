require "./helper_spec"

# course unit testing should already be working
RSpec.describe "Course should be know if needs to 'fix' the grades" do

    it "when students grade go down" do
        s1 = Student.new 
        s2 = Student.new 
        s3 = Student.new 

        g_l1 = Grade.new :low
        g_l2 = Grade.new :low
        g_l3 = Grade.new :low
        g_m1 = Grade.new :med
        g_h1 = Grade.new :high

        s1.add_grade g_l1
        s1.add_grade g_l2
        s1.add_grade g_l3
        s2.add_grade g_m1
        s3.add_grade g_h1

        course = Course.new 
        course.add_student s1
        course.add_student s2
        course.add_student s3

        expect(course.need_to_fix_grades?).to eq(false)

        g_m1.val = 3
        expect(course.need_to_fix_grades?).to eq(true)
    end
    
end 
