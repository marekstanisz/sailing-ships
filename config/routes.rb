Rails.application.routes.draw do
  resources :motivators
  resources :needs
  resources :obstacles
  resources :fuckups
  resources :lessons_learneds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
