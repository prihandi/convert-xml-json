Rails.application.routes.draw do
  # Default route for root url
  get '/', to: 'home#index'
  post '/', to: 'home#index'
  
  post '/api/convert', to: 'converter#convert'
end
