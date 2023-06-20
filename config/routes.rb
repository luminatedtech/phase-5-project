Rails.application.routes.draw do
  resources :sellers, only: [:show] do 
    resources :reviews, only: [:show,:index]
  end 
  resources :customers, :reviews, :sellers, :sessions, only: [:create,:show,:destroy,:update,:index]
  
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
