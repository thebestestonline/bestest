Rails.application.routes.draw do
    root to: 'pages#home'
    devise_for :users, controllers: { registrations: 'users/registrations' }
    
    resources :users do
        resource :profile
    end
    
    resources :users do
        resources :bests
    end
    
    
    
    get 'about', to: 'pages#about'
    get 'get-listed', to: 'pages#get-listed'
    resources :contacts, only: :create
    resources :search
    
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
    
end
