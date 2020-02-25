Rails.application.routes.draw do
  get 'sessions/new'
  get 'cat_toys/new'
  get 'cat_toys/create'
  get 'cat_toys/show'
  get 'cat_toys/index'
  resources :cats
  resources :cat_memes
  resources :users

  get '/all_the_cat_memes', to: "cat_memes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
