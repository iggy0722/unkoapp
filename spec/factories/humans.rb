FactoryBot.define do
  factory :human do
    name { 'yamada山田ヤマだ1' }
    type_id { 2 }
    association :user
  end
end
