Rails.application.routes.draw do
devise_for :users
  root 'welcome#index'
    resources :products
    namespace :admin do
      resources :products
  end
end
