Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :secrets, only: [:show]
  resources :sessions, only: [:new,:create,:destroy,:show]
  get '/secrets/show' => 'secrets#show', as: :show
  delete '/' => 'sessions#destroy', as: :destroy
  get '/' => 'sessions#show', as: :root
end
