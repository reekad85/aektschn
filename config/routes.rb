Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  root 'static_pages#landing_page' # could be changed into root 'products#index' if I wanted the customers directly be directed to the productssection

  post 'static_pages/thank_you'
  
end
