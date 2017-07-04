Rails.application.routes.draw do
  resources :seller_goals
  root 'home#home'
  devise_for :users, controllers: { sessions: 'sessions' }

  resources :seller_goal_days
  resources :goal_days
  resources :store_sellers
  resources :store_goals
  resources :user_stores
  resources :goals
  resources :sellers
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
