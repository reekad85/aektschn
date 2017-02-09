Rails.application.routes.draw do
	devise_for :users, skip: [:sessions]
  get 'static_pages/about'
	as :user do
  	get 'signin', to: 'devise/sessions#new', as: :new_user_session
  	post 'signin', to: 'devise/sessions#create', as: :user_session
  	delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
	end
  
  
  resources :products do
    resources :comments
  end
  
  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  root 'static_pages#landing_page' # could be changed into root 'products#index' if I wanted the customers directly be directed to the productssection

  post 'static_pages/thank_you'

  post 'payments/create'

  
  
end
