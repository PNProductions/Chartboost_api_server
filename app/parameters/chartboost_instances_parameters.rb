module ChartboostInstancesParameters
  def mandatory
    [:uuid]
  end

  def not_mandatory
    [:ifa, :macid, :gaid, :formatted_ifa, :device_country_code,
     :device_model, :device_os, :device_language, :device_type,
     :to_store_id, :from_store_id, :user_id, :platform, :to_app_name, :to_app_id,
     :to_company_name, :from_app_name, :from_app_id,
     :from_company_name, :event_type,
     :device_country_code, :device_model, :device_os,
     :device_language, :device_type,
     :to_bundle_id, :from_bundle_id, :side_of_event,
     :campaign, :campaign_id, :campaign_type,
     :currency_name, :award_amount, :target_name, :bid_type]
  end

  def all_parameters
    mandatory + not_mandatory
  end
end
