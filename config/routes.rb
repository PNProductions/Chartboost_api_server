Rails.application.routes.draw do
  post 'create_ad', to: 'chartboost_instances#create', defaults: { format: 'json' }
  get 'show_ad', to: 'chartboost_instances#show', defaults: { format: 'json' }
  get 'delete_ad', to: 'chartboost_instances#delete', defaults: { format: 'json' }
  get 'ping', to: 'chartboost_instances#ping'
end
