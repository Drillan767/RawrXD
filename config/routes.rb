Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/contact'
  get 'home/about'

  resources :portfolios
  resources :bases
  resources :articles

  as :user do
    get 'login', to: 'devise/sessions#new', as: :login
    get 'logout', to: 'devise/sessions#destroy', as: :logout
  end

  authenticate :user do
    scope '/admin' do

      resources :settings
      resources :portfolios
      resources :articles
    end
  end
end
