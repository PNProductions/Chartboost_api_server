FactoryGirl.define do
  factory :chartboost_instance do
    sequence(:from)  { |n| "Game_from_#{n}" }
    sequence(:uuid)  { |n| "000000000000000#{n}" }
    sequence(:campaign)  { |n| "campaign_#{n}" }
    sequence(:campaign_id)  { |n| "999999999999999#{n}" }
    sequence(:macid)  { |n| "5555555555555#{n}" }
    sequence(:to)  { |n| "test_advertiser_game_#{n}" }
    sequence(:ifa)  { |n| "8888888888888_#{n}" }
    my_type 'click'
  end
end
