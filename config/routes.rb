Rails.application.routes.draw do
  devise_for :users
  # root to: '../views/pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: %i[index show]
      resources :items, only: %i[index show destroy] do
        resources :requests, only: %i[index show destroy]
      end
      post 'login', to: 'users#login'
    end
  end
end
