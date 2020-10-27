FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 5)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Alphanumeric.alphanumeric(number: 6, min_alpha: 1, min_numeric: 1)}
    password_confirmation {password}
    first_name            {"山田"}
    last_name             {"陸太郎"}
    first_name_kana       {"ヤマダ"}
    last_name_kana        {"リクタロウ"}
    birthday              {Faker::Date.between(from: '1930-01-01', to: '2015-12-31')}
  end
end