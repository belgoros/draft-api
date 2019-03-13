FactoryBot.define do
  factory :post do
    title { Faker::Hipster.word.capitalize }
    body { Faker::Lorem.sentence }
    archived { Faker::Boolean.boolean }
    tag_ids { (Array.new(3) { rand(1..10) }).uniq}
  end
end
