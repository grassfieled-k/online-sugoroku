Rails.application.routes.draw do
  get 'top', to: 'top#index'
  get 'top/index'
  get 'top/new'
  get 'top/continue'
  resources :events
  resources :jobs
  resources :players
  resources :spaces
  resources :maps
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
