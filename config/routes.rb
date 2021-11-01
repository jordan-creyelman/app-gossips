Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'index#home'
  
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome'
  get "/" , to:'index#home'

  resources :gossips do 
    resources :comments
    resources :likes
  end
end
