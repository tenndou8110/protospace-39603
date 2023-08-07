Rails.application.routes.draw do
  get 'prototypes/index'
  get 'prototypes/index' => 'prototypes#index'
end
