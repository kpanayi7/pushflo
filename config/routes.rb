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

  resources :workflows, only: [:new, :create, :update, :edit,:index, :show, :uploads]
  resources :programs, only: [ :show], as: 'icons'

  get 'program', to: 'workflows#index_by_program', as: :program
  get 'user_workflows', to: 'workflows#index_by_user', as: :user_workflows
  get 'workflows', to: 'workflows#uploads', as: :uploads

  get 'unapproved', to: 'workflows#index_by_unapproved', as: :unapproved

  resources :favourites, only: [:create, :destroy]
  get 'users/:id/favourites', to: 'favourites#index', as: 'favourited' do
    resources :workflows
  end
 get 'users/:id/uploads', to: 'favourites#index_uploads', as: 'uploaded' do
    resources :workflows
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
