Rails.application.routes.draw do

  root to: "links#index"
  devise_for :users
  resources :users do
    resources :links, :only => [:new, :create]
  end
  resources :links do
    resources :comments
    resources :votes
  end
end
