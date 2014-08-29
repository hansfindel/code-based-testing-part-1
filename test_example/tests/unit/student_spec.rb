require "./helper_spec"

RSpec.describe "Student" do

    context "can be initialized" do 
        # factories
        it "student-default" do 
            student = FactoryGirl.build(:student)
            expect(student.class).to eq(Student)
            # expect(student.average).to eq(1)
        end

        it "bad-student" do 
            student = FactoryGirl.build(:bad_student)
            expect(student.class).to eq(Student)
            expect(student.passing?).to eq(false)
        end

        it "good-student" do 
            pending("create a good student")
            this_should_not_get_executed
        end

        # normal
        it "should create a valid student with no params" do 
            pending("create a student through the default-initialization")
            this_should_not_get_executed
        end

    end

    context "can execute its public methods" do 
        it "should be able to get the students grades" do 
            student = Student.new 
            expect(student.grades).to eq([])
            grade1 = Grade.new 4
            grade2 = Grade.new 6
            student.add_grade grade1
            student.add_grade grade2
            expect(student.grades).to include(grade1, grade2)
            expect(student.grades.length).to eq(2)
        end
        
        it "should be able to get a bad_students grades" do 
            student = FactoryGirl.build(:bad_student)
            expect(student.grades.length).to be > 0
        end

        # add_grade - currently it has no limit of grades
        it "should be able to add a grade" do 
            pending("a student should be able to add a grade")
            this_should_not_get_executed
        end

        # average
        it "shoud be able to get its average with no grades" do 
            student = Student.new 
            expect(student.average).to eq(1)
        end

        it "shoud be able to get its average with one grade" do 
            student = Student.new 
            grade1  = Grade.new 4
            student.add_grade grade1

            expect(student.average).to eq(4)
        end

        it "shoud be able to get its average with more grade" do 
            # pending("a student should be able to know its grades average")
            # this_should_not_get_executed
            student = Student.new 
            grade1  = Grade.new 4
            grade2  = Grade.new 6
            student.add_grade grade1
            student.add_grade grade2

            expect(student.average).to eq(5)

        end

        it "shoud be able to get its average with more grade with float average" do 
            student = Student.new 
            grade1  = Grade.new 4
            grade2  = Grade.new 5
            student.add_grade grade1
            student.add_grade grade2

            expect(student.average).to eq(4.5)

        end

        # passing?
        it "shoud be able to know if its grades are enough" do 
            pending("a student should be able to know if its grades are enough")
            this_should_not_get_executed
        end
    end

end

# what else could be tested?