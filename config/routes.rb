Rails.application.routes.draw do
  get 'users/list'

  get 'registration', to: 'users#registration'
  post 'registation/create', to: 'users#create'


  get 'login', to: 'users#login'
  post 'perform_login', to: 'users#perform_login'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sign-up', to: 'users#sign_up'
end
