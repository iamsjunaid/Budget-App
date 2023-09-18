Rails.application.routes.draw do
  get 'groups/index'
  devise_for :users

  resources :users, only: [] do
    resources :categories, only: [:index]
  end

  root 'splash#index'
end
