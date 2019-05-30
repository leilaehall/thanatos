Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :users
  get '/dashboard', to: 'dashboard#index'
  resources :messages, only: [:index, :create]

  resources :delegates, only: [:index, :create, :edit, :destroy] do
    member do
      get '/:token', to: 'delegates#confirm_email', as: :confirm_email
    end
  end

  resources :companies, only: [:index, :show, :update]

  resources :preferences, only: [:create, :update] do
    member do
      get 'basics'
      get 'ceremony'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# templates to be added if possible
