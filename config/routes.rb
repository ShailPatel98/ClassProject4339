Rails.application.routes.draw do
  resources :class_assignments
  resources :professors
  resources :offices
  resources :classrooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
