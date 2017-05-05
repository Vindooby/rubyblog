Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#index"
  resources :users
  resources :posts do
    resources :comments
  end
end

  get "/posts" => "posts#index"
