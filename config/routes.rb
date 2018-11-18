Rails.application.routes.draw do
  

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'posts' => 'posts#index' # Doublon avec root.. et du coup, HomeController ne sert à rien ?
  post 'posts' => 'posts#create'

  root to: 'posts#index' 
end
