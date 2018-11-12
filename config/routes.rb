Rails.application.routes.draw do
  resources :courses_students
  resources :categories_courses
  resources :comments_lessons
  resources :comments_courses
  resources :lessons
  resources :temaries
  resources :categories
  resources :courses
  resources :teachers
  resources :students
  resources :users
  resources :rols
  resources :document_types
  post 'user_token' => 'user_token#create'
  post 'contact' => 'contact#index'
end
