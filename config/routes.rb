Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: %i[index show]
      resources :items, only: %i[index create show destroy] do
        resources :requests, only: %i[create]
      end
      resources :requests, only: %i[show destroy]
      post 'login', to: 'users#login'
    end
  end
end
