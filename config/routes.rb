Comedy::Application.routes.draw do

  resources :videos
  resources :gigs
  match 'map/update_markers' => 'map#update_markers'
  resources :tours
  resources :comedians

  devise_for :users

  root :to => "map#show"

end
