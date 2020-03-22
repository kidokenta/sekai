Rails.application.routes.draw do
  # get 'actions/index'
  # get 'actions/create'
  # get 'actions/destroy'
  # get 'actions/edit'
  # get 'actions/update'
  # get 'actions/show'
  # get 'users/index'
  # get 'users/show'
  devise_for :users
  root "posts#index"
  resources :posts do 
    resources :actions
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
