Rails.application.routes.draw do
  
  resources :works
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'top#index'
  get 'todolists/new'
  post 'todolists/create' => 'todolists#create'
  
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'

  root 'post_images#index'

  resources :post_images, only: [:new, :create, :index, :show] do
    resource :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

end
