Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pages

  resources :topics, only: [:index, :new, :create, :show] do
    resources :post, only: [:new, :create]
  end

end
