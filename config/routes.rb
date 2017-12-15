Rails.application.routes.draw do
  
  get "/" => "home#top"
  get "about" => "home#about"
  
  get "signup" => "users#new"

  resources :users
  

  resources :posts do
    get 'contact'
  end
end
