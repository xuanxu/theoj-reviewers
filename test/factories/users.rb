FactoryBot.define do
  factory :user do
    sequence(:first_name) {|n| "Test_#{n}" }
    sequence(:last_name) {|n| "User_#{n}" }
    sequence(:github_uid) {|n| "ghuid_#{n}" }
    sequence(:github) {|n| "ghuser_#{n}" }

    trait :reviewer do
      reviewer { true }
    end

    trait :admin do
      reviewer { true }
    end
  end
end
