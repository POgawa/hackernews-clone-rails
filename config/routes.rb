Rails.application.routes.draw do

  root to: "comments#index"
  devise_for :users
  resources :comments

end
