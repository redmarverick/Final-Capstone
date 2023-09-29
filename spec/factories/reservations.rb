FactoryBot.define do
  factory :reservation do
    city { "Sample City" }
    date { Date.today }
    user { association(:user) }
    car { association(:car) }
  end
end
