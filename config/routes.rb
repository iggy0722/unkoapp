Rails.application.routes.draw do
  devise_for :users
  root to: "humans#index"
  resources :humans, only: [:index ,:new ,:create ,:show, :edit, :update]
end
