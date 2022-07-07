Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "urls/new" => "urls#new"
  root :to => "urls#index"
  resources :urls
end
