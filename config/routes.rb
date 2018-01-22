Rails.application.routes.draw do

  root 'home#index'

  get '/contact' => 'home#contact', as: :contact
  get '/about' => 'home#about', as: :about

  devise_for :users

  as :user do
    get 'login' => 'devise/sessions#new', as: :login
    get 'logout' => 'devise/sessions#destroy', as: :logout
  end

  get '/admin' => 'home#admin', as: :admin

  authenticate :user do
    scope '/admin' do
      resources :bases
      resources :portfolios
      resources :articles
    end
  end
end
