# course_factory.rb

FactoryGirl.define do

  factory :course do
  end

  # This will use the Grade class (a bad one)
  factory :average_course, class: Course do
    after(:build) do |course, evaluator|
        s1 = FactoryGirl.build(:bad_student)
        s2 = FactoryGirl.build(:student)
        s3 = FactoryGirl.build(:good_student)

        g_m1 = FactoryGirl.build(:med_grade)

        s2.add_grade g_m1

        course.add_student s1
        course.add_student s2
        course.add_student s3
    end
  end

  factory :bad_course, class: Course do
    after(:build) do |course, evaluator|
        s1 = FactoryGirl.build(:bad_student)
        s2 = FactoryGirl.build(:bad_student)
        s3 = FactoryGirl.build(:good_student)

        s1.add_grade FactoryGirl.build(:bad_grade)
        s2.add_grade FactoryGirl.build(:bad_grade)
        s3.add_grade FactoryGirl.build(:bad_grade)

        course.add_student s1
        course.add_student s2
        course.add_student s3
    end
  end


end