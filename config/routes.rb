Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :jobs do
    member do
      post :publish
      post :hide
    end
  end
  namespace :admin do
    resources :jobs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'jobs#index'
end
