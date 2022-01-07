Rails.application.routes.draw do
  devise_for :users
  root to: "humans#index"
  resources :humans do
    resources :poops, only:[:index, :new, :create, :show]
  end
end
