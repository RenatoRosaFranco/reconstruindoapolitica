Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  devise_for :users

  root to: 'home#index'
  resources :contributions, only: [:index]
  resources :about_us
  namespace :blog do 
  	resources :posts, only: [:index, :show]
  end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
