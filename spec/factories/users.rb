FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    password { 'aaaa111' }
    password_confirmation { 'aaaa111' }
  end
end
