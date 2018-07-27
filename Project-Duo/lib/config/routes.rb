Rails.application.routes.draw do

  root 'games#index'

  devise_for :users
  
  resources :games
  
  resources :genres do 
    member do
      get :all_genre_games
    end
  end
  
end
