Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'category#index'

  namespace :api do
    namespace :v1 do
      resources :score, only: [:create]
    end
  end
end
