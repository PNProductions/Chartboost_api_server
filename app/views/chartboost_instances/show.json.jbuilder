if Time.diff(Time.now,chartboost_instance.created_at) < 1.day
  json.message "Success"
  json.from chartboost_instance.from
  json.uuid chartboost_instance.uuid
  json.campaign chartboost_instance.campaign
  json.campaign_id chartboost_instance.campaign_id
  json.macid chartboost_instance.macid
  json.TestAdvertiserGame chartboost_instance.TestAdvertiserGame
  json.type chartboost_instance.my_type
else
  json.message "Too mush time passed"
  json.time_pass Time.diff(Time.now,chartboost_instance.created_at).to_s
end
