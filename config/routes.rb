Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[new create]
    collection do
      get :top
    end
    member do
      get :chef
    end
  end
  resources :reviews, only: :destroy
end
