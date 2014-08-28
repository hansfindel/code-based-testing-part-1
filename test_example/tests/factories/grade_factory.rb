FactoryGirl.define do

    factory :grade do
        val (Random.rand(6) + 1)
    end

    # This will use the Grade class (a bad one)
    factory :bad_grade, class: Grade do
        val Grade.VALUES[:low]
    end

    factory :med_grade, class: Grade do
        val Grade.VALUES[:med]
    end

    factory :good_grade, class: Grade do
        val Grade.VALUES[:high]
    end

end