Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'prototypes/index' => 'prototypes#index'
end
