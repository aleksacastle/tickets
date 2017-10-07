Rails.application.routes.draw do
  devise_for :users
  resources :buses
  root to: "buses#index"
end
