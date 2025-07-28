Rails.application.routes.draw do
  devise_for :users
  resources :books

  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check
end
