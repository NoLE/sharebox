Rails.application.routes.draw do
  resources :assets
  devise_for :users
  root to: "home#index"
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy' #Crear ruta de destruir un inicio de sesion
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
