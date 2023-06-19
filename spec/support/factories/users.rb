FactoryBot.define do
    factory :user do
      email { Faker::Internet.email }
      password { Faker::Lorem.characters(number: 12) }
    end
  end