require "./helper_spec"

RSpec.describe "Student" do

    context "can be initialized" do 
        # factories
        it "student-default" do 
            pending("create a student")
            this_should_not_get_executed
        end

        it "bad-student" do 
            pending("create a bad student")
            this_should_not_get_executed
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
            pending("a student-default should have no grades")
            this_should_not_get_executed
        end
        
        it "should be able to get the students grades" do 
            pending("a [good|bad]student should have some grades")
            this_should_not_get_executed
        end

        # add_grade - currently it has no limit of grades
        it "should be able to add a grade" do 
            pending("a student should be able to add a grade")
            this_should_not_get_executed
        end

        # average
        it "shoud be able to get its average with no grades" do 
            pending("a student should be able to know its grades average")
            this_should_not_get_executed
        end

        it "shoud be able to get its average with one grade" do 
            pending("a student should be able to know its grades average")
            this_should_not_get_executed
        end

        it "shoud be able to get its average with more grade" do 
            pending("a student should be able to know its grades average")
            this_should_not_get_executed
        end

        # passing?
        it "shoud be able to know if its grades are enough" do 
            pending("a student should be able to know if its grades are enough")
            this_should_not_get_executed
        end
    end

end

# what else could be tested?