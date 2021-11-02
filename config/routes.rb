Rails.application.routes.draw do
  get 'gossips/:id',to:'gossips#show',as: "gossips"
  
  get '/user/:id', to: 'user#show',as: "user"
  
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome'
  get "/" , to:'index#home'

end
