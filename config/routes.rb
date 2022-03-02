Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'
  # get 'users/:id', to: 'users#show', as: 'profile'
  get 'profile', to: 'users#show'
  get 'users/:id/edit', to: 'users#edit', as: 'update_user'
  patch 'users/:id', to: 'users#update', as: 'edit_user'
  put 'users/:id', to: 'users#update'

  resources :workflows, only: [:new, :create, :update, :edit]
  resources :workflows, only: [:index, :show, :uploads]
  get 'workflows', to: 'workflows#index_by_program', as: :program
  get 'workflows', to: 'workflows#uploads', as: :uploads

  get 'users/:id/favourites', to: 'favourites#index', as: 'favourites'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
