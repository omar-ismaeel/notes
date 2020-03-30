Rails.application.routes.draw do
  resources :posts do
    member do
      get 'share'
      post 'share_it'
    end
  end
  resources :users do
    member do
      get 'show'
    end
  end
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'
   get 'authorized', to: 'sessions#page_requires_login'
   root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
