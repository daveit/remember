Remember::Application.routes.draw do
  resources :vpayments
  resources :mpayments
  resources :committees
  resources :vcats
  resources :villages
  resources :members
  resources :com_types
  resources :means_payments
  resources :member_villages
  resources :categories
  resources :suburbs
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end