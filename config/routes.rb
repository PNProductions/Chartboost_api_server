Rails.application.routes.draw do
  resources :chartboost_instances, only: [:show, :create], defaults: { format: 'json' }
end
