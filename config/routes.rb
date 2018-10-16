Rails.application.routes.draw do

  devise_for :users

  root 'homes#index'

# 入れ子関係にすると/jobs/:job_id/配下に/entriesというパスが作成されるようになる
  resources :jobs, only: [:index, :new, :create, :show] do
    resources :entries
  end



end
