Rails.application.routes.draw do
  post 'create_ad', to: 'chartboost_instances#create'
  get 'show_ad', to: 'chartboost_instances#show'
  get 'delete_ad', to: 'chartboost_instances#delete'
  get 'ping', to: 'chartboost_instances#ping'
end
