Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  root 'static_pages#landing_page' # could be changed into root 'products#index' if I wanted the customers directly be directed to the productssection
  
end
