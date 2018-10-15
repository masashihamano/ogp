Rails.application.routes.draw do


  root 'homes#index'
  resources :jobs, only: [:index, :new, :create, :show]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
