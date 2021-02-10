Rails.application.routes.draw do
  resources :sales
  resources :promotions
  resources :products
  resources :costs
  resources :channels
  resources :cal_times
  resources :countries
  resources :cal_month_sales
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'static_pages/home'
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
end
