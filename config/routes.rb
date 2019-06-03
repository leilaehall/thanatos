Rails.application.routes.draw do
  get 'preferences/basics'
  get 'preferences/ceremony'
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  resources :users
  get '/dashboard', to: 'dashboard#index'
  resources :messages, only: [:index, :create, :destroy]

  resources :delegates, only: [:index, :create, :edit, :destroy] do
    member do
      get '/:token', to: 'delegates#confirm_email', as: :confirm_email
    end
  end

  resources :companies, only: [:index, :show, :update]

  resources :preferences, only: [:create, :update] do
    collection do
      get 'basics'
      get 'funeral'
    end
  end

  require "sidekiq/web" #delayed message sending
  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :companies_preference, only: [:destroy, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# templates to be added if possible
