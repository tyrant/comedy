Comedy::Application.routes.draw do


  match 'map/update_markers' => 'map#update_markers'

  resources :comedians do
    resources :tours 
    resources :videos
    resources :gigs   
  end

  devise_for :users

  root :to => "map#show"

end
