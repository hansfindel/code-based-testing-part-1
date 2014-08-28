FactoryGirl.define do

    factory :student do
    end

    # This will use the Student class (a bad_student)
    factory :bad_student, class: Student do 
        after(:build) do |student, evaluator|
            student.add_grade FactoryGirl.build(:bad_grade)
        end
    end

    factory :good_student, class: Student do
        after(:build) do |student, evaluator|
            student.add_grade FactoryGirl.build(:good_grade)
        end
    end

end