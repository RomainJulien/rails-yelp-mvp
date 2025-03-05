Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  # Routes pour restaurants et avis
  resources :restaurants do
    resources :reviews, only: [:new, :create, :destroy]
  end
end
