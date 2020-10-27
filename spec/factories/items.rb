FactoryBot.define do
  factory :item do
    name                {"りんご"}
    description         {"青森産のりんごです"}
    category_id            {10}
    status_id              {2}
    postage_id             {2}
    regional_id            {3}
    shipping_date_id       {3}
    price               {1980}
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test.png'), filename: 'test.png')
    end
  end
end
