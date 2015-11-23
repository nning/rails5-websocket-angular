FactoryGirl.define do
  factory :company do
    name { Faker::Company.name }

    slogan { Faker::Company.catch_phrase }
    logo_url { Faker::Company.logo }
  end
end
