Rails.application.routes.draw do
    resources :chartboost_instances, except: [:new, :edit]
end
