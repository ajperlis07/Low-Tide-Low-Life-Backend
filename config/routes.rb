Rails.application.routes.draw do
  resources :favorites
  resources :recipes
  resources :users
  resources :fish
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
