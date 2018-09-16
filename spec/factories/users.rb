require "faker"

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    address { Faker::Address.full_address }
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    password { Faker::Internet.password }
    role { 0 }
  end
end
