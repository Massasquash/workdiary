Rails.application.routes.draw do
  resources :diaries do
    resources :works, only: [:new, :create, :edit, :update, :destroy] do
      resources :memos, only: [:create, :update, :destroy], shallow: true
    end
  end
  
  resources :templates, only: [:new, :create]
  
  get 'templates/get_body'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'diaries#index'
  
end
