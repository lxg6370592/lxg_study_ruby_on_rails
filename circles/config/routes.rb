Rails.application.routes.draw do
  # get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'

  resources :users do
    get :blogs, on: :member
  end
  
  resources :sessions

  resources :blogs

  namespace :admin do
    root 'users#index'

    resources :users do
      collection do
        get :search
      end
    end
  end

end
