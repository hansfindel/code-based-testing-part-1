require "./helper_spec"

RSpec.describe Grade do
    context "can be initialized" do 
        # valid creations
        it "should allow instantiation with numbers" do
            grade = Grade.new 5

            expect(grade.is_valid?).to eq(true)
        end
        
        it "should allow instantiation with string" do
            grade = Grade.new "med"

            expect(grade.is_valid?).to eq(true)
        end

        it "grade's should allow instantiation with token" do
            grade = Grade.new :high

            expect(grade.is_valid?).to eq(true)
        end

        # invalid creations
        it "grade's should allow instantiation with string" do
            grade = Grade.new "unexistent_value"

            # expect(grade.is_valid?).not_to eq(true)
            expect(grade.is_valid?).to eq(false)
        end

        it "grade's should allow instantiation with token" do
            grade = Grade.new :very_high

            expect(grade.is_valid?).not_to eq(true)
        end
    end 

    context "can change its value" do
        it "grade's value should remain unchanged" do
            grade = Grade.new 5

            expect(grade.val).to eq(5)
        end

        it "grades value should be updated on change" do 
            grade = Grade.new 5
            grade.val= 7

            expect(grade.val).not_to eq(5)
            expect(grade.val).to eq(7)
        end
    end

end