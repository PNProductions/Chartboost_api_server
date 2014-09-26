json.array!(@chartboost_instances) do |chartboost_instance|
  json.extract! chartboost_instance, :id
  json.url chartboost_instance_url(chartboost_instance, format: :json)
end
