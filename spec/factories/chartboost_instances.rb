FactoryGirl.define do
  factory :chartboost_instance do
    sequence(:user_id)  { |n| "0000#{n}" }
    sequence(:platform)  { |n| "platform_#{n}" }
    sequence(:to_app_name)  { |n| "to_app_name_#{n}" }
    sequence(:to_app_id)  { |n| "to_app_id_#{n}" }
    sequence(:to_company_name)  { |n| "to_company_name_#{n}" }
    sequence(:from_app_name)  { |n| "from_app_name_#{n}" }
    sequence(:from_app_id)  { |n| "9999#{n}" }
    sequence(:from_company_name)  { |n| "from_company_name_#{n}" }
    sequence(:event_type)  { |n| "event_type_#{n}" }
    sequence(:gaid)  { |n| "gaid_#{n}" }
    sequence(:formatted_ifa)  { |n| "formatted_ifa_#{n}" }
    sequence(:device_country_code)  { |n| "device_country_code_#{n}" }
    sequence(:device_model)  { |n| "device_model_#{n}" }
    sequence(:device_os)  { |n| "device_os_#{n}" }
    sequence(:device_language)  { |n| "device_language_#{n}" }
    sequence(:device_type)  { |n| "device_type_#{n}" }
    sequence(:to_store_id)  { |n| "5555#{n}" }
    sequence(:from_store_id)  { |n| "6666#{n}" }
    sequence(:to_bundle_id)  { |n| "7777#{n}" }
    sequence(:from_bundle_id)  { |n| "8888#{n}" }
    sequence(:side_of_event)  { |n| "side_of_event_#{n}" }
    sequence(:uuid)  { |n| "1111#{n}" }
    sequence(:campaign)  { |n| "campaign_#{n}" }
    sequence(:campaign_id)  { |n| "2222#{n}" }
    sequence(:campaign_type)  { |n| "campaign_type_#{n}" }
    sequence(:macid)  { |n| "3333#{n}" }
    sequence(:ifa)  { |n| "4444#{n}" }
    sequence(:currency_name)  { |n| "currency_name_#{n}" }
    sequence(:award_amount)  { |n| "award_amount_#{n}" }
    sequence(:target_name)  { |n| "target_name#{n}" }
    sequence(:bid_type)  { |n| "bid_type#{n}" }
  end
end
