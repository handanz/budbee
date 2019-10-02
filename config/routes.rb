Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/404", to: 'errors#not_found'
  get "/500", to: 'errors#internal_error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups, only: [ :show, :index ] do
    resources :meetings, only: [ :show ]
  end

end
