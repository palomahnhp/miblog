Rails.application.routes.draw do
  devise_for :autors
  get 'home/index'
  root 'home#index'

  resources :articulos
  get 'estaticas/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
