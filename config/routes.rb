Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  get "books/index" => "books#index", :as => :user_root
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  resources :users, only: [:show, :index, :edit]
end
