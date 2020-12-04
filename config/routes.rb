Rails.application.routes.draw do
  root 'pages#home'
  resources :workouts
  resources :lift_workouts
  resources :lift_sets
  resources :lifts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
