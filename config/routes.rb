Rails.application.routes.draw do

  # get "/profile/:id", to: 'users#show', as: 'profile'
  devise_for :users
  root to: 'pages#home'

  devise_scope :user do
   get "/profile/:id", to: 'users#show', as: :profile
  end

  get "/404", to: 'errors#not_found'
  get "/500", to: 'errors#internal_error'

  resources :groups, only: [ :show, :index ] do
    resources :meetings, only: [ :show ]
  end

  resources :user_meetings, only: :create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
