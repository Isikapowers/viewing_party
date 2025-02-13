FactoryBot.define do
  factory :mock_party, class: Party do
    movie_id { nil }
    duration { Faker::Number.between(from: 0.0, to: 240.0) }
    time { "3:00 PM"}
    date { "06/07/2021" }
  end
end
