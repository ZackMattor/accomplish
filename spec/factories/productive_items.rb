FactoryGirl.define do
  factory :productive_item do
    body { Faker::Lorem.sentence }
  end
end
