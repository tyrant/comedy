Comedy::Application.routes.draw do

  resources :videos
  resources :gigs
  resources :tours
  resources :comedians

  devise_for :users

  root :to => "map#show"

  # See how all your routes lay out with "rake routes"

end
