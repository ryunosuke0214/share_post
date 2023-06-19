FactoryBot.define do
    factory :article do
      title { 'Test Article' }
      content { Faker::Lorem.paragraph }
    end
  end