Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update] do
  	member do
      get :following, :followers
    end
  end
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resource :book_comments, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  root to: 'home#top'
  get 'home/about' => 'home#about'
  get "search" => "users#search"
end