Rails.application.routes.draw do
  get 'todo/index'

  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todo#index'
end
