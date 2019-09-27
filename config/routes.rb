Rails.application.routes.draw do
  resources :diaries do
    resources :works, only: [:new, :create, :edit, :update, :destroy]
  end
  
  resources :templates, only: [:new, :create, :edit, :update, :index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'diaries#index'
end
