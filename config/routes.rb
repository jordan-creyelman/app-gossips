Rails.application.routes.draw do
  
  
  resources :users
   resources  :gossips
  # get 'gossips/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'index#home'
  get '/users/:id', to: 'user#show'
  get 'gossips/:id', to: 'gossips#show' 
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome'
  get "/" , to:'index#home'

end
