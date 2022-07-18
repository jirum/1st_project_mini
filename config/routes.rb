Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/urls' => 'urls#index'
  get '/:short_url' => 'urls#redirect'
  root :to => "urls#index"
  resources :urls, only: [:index, :new, :create, :edit, :update, :destroy]

  namespace :api do
    resources :regions, only: :index, defaults: { format: :json}
    resources :provinces, only: :index, defaults: { format: :json}
  end
end
