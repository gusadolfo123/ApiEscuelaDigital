Rails.application.routes.draw do
  resources :users
  resources :rols
  resources :document_types
  post 'user_token' => 'user_token#create'
end
