Rails.application.routes.draw do
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'get-listed', to: 'pages#get-listed'
    resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
    devise_for :users
end
