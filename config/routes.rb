Rails.application.routes.draw do
  get 'posts/index'

  #get 'home/top'
  #root 'application#hello' 
  get "/" => "home#top"
  get "about" => "home#about"
end