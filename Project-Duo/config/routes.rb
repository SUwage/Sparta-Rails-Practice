Rails.application.routes.draw do
  get 'static/index'
  get 'games/index'
  # get 'games/new'
  # get 'games/show'
  # get 'games/edit'
  devise_for :users
  resources :games

  authenticated do
  root :to => 'games#index'
end

root :to => 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
