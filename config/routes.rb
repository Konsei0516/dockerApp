Rails.application.routes.draw do
  get 'youtubes/index'
  devise_for :users, controllers:{
    registrations: 'users/registrations'
  }
  
  root to: "reviews#index"
  resources :reviews do
    collection do
      get 'rakuten_search', to: 'reviews#rakuten_search'
    end
  end

  resources :users
end