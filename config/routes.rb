Rails.application.routes.draw do
  resources :links, only: [:new, :create]

  namespace :api do
    namespace :v1 do
      resources :links, only: [:update, :create]
    end
  end
end
