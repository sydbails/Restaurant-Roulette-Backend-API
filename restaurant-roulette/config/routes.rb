Rails.application.routes.draw do
  resources :matches
  resources :cuisine_preferences
  resources :cuisines
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
