Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [] do
    resources :categories, only: [:index]
  end

  root 'splash#index'
end
