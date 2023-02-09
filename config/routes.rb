Rails.application.routes.draw do
  devise_for :users
  get "/about", to: "pages#abt" 
  root "pages#home"
  get "/help", to: "pages#hel"

  resources :todos
  resources :books
end
