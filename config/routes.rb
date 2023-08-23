Rails.application.routes.draw do
  resources :prototypes
  root to: 'prototypes#index'
end
