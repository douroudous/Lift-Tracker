Rails.application.routes.draw do
  resources :routine_lifts
  resources :routines
  root 'pages#home'
  resources :workouts
  resources :lift_workouts
  resources :lifts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
