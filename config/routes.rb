Rails.application.routes.draw do
  get '/' => 'home#index'
  resources :users
  get '/log-in' => "sessions#new"
  post '/log-in' => "sessions#create"
  get '/log-out' => "sessions#destroy", as: :log_out
end
