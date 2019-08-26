Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'top#index'
  get 'todolists/new'
  post 'todolists/create' => 'todolists#create'
  
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'

end
