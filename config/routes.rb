Rails.application.routes.draw do
  
  
  # resources :users
    # resources  :gossips
  get 'gossips/:id',to:'gossips#show',as: "gossips"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'index#home'
  get '/user/:id', to: 'user#show',as: "user"
  
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome'
  get "/" , to:'index#home'

end
