FactoryBot.define do
  factory :person do
    name { Faker::Name.name }
    email_address { Faker::Internet.email }
    job_title { "MyString" }
  end
end
