Rails.application.routes.draw do
  get 'users/new'
  get 'posts/new'
  resources :posts, only: [:new, :create, :index]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
