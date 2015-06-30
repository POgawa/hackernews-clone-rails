Rails.application.routes.draw do

  root to: "comments#index"
  devise_for :users
  resources :users do
    resources :comments
  end

end
