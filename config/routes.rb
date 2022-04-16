Rails.application.routes.draw do
  root 'sessions#welcome'
  resources :users, only: [:new, :create, :edit, :update]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'
#  get 'welcome', to: 'sessions#welcome'
end
