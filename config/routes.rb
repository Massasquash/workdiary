Rails.application.routes.draw do
  resources :diaries do
    resources :works, except: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'diaries#index'
end
