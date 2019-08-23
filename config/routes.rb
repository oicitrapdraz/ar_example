Rails.application.routes.draw do
  devise_for :admins
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :pets
  resources :records, only: %i[index show]
end
