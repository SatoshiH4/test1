Rails.application.routes.draw do
  
  get "/" => "home#top"
  get "about" => "home#about"
  
  get "signup" => "users#new"
get "posts/contact"=>"posts#contact"
post "posts/contact_create" => "posts#contact_create"

  resources :users
  

  resources :posts do
    get 'contact'
  end
end
