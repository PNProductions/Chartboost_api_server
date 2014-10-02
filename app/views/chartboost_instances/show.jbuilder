json.instance @chartboost_instance
json.time_pass Time.diff(Time.now, @chartboost_instance.created_at).to_s
