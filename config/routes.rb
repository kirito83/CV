Rails.application.routes.draw do
  get 'accueil', to: 'static_pages#accueil'
  get 'contact', to: 'static_pages#contact'
  get 'bio', to: 'static_pages#bio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:new, :create]
  root 'static_pages#accueil'
end