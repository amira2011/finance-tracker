Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  get 'welcome/index'
  root 'users#my_portfolio'
  get 'my_portfolio' , to: 'users#my_portfolio'
  get 'search_stock' ,to: 'stocks#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
