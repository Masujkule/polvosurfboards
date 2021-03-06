Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/index'
  get 'static_pages/landing_page'
  get 'static_pages/polvo_family'
	
	post 'static_pages/thank_you'

  root'static_pages#landing_page'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
