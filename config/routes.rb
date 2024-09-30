Rails.application.routes.draw do
  # health check
  get "up" => "rails/health#show", as: :rails_health_check

  # pwa
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # oauth callback
  get 'auth/:provider/callback', to: 'sessions#create'

  # if user is not logged in, redirect to login page
  authenticated :user do
    root "home#index", as: :authenticated_root
  end

  # else redirect to login page
  root "sessions#new"
end
