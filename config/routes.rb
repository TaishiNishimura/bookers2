Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => 'homes#show'
  resources :books, only:[:index, :create, :show, :edit, :update, :destroy ]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
