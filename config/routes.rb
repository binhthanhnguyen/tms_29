Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"

  namespace :admin do
    root "subjects#index"
    resources :subjects
  end

  resources :users, only: [:index, :show]
end
