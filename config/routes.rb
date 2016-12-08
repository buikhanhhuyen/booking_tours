Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"

  devise_for :users, :controllers => {:sessions => "my_devise/sessions"}
  root "static_pages#home"
  get "/static_pages/:page" => "static_pages#show", as: "static_pages"
  resources :places do
    collection {post :search, to: "places#index"}
    resources :reviews, except: :index
  end
  resources :tours do
    collection {post :search, to: "tours#index"}
    resources :bookings, except: [:edit, :update, :index]
  end
  resources :bookings, only: :index
  resources :reviews do
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  resources :users
  resources :discounts, only: [:show, :index]
  resources :categories, only: [:show, :index]

  namespace :admin do
    root "static_pages#home", as: "static_pages"
    get "static_pages/:page" => "static_pages#show"
    resources :categories
    resources :tours do
      collection {post :search, to: "tours#index"}
      resources :bookings, only: [:show, :update]
    end
    resources :bookings, only: :index do
      collection {post :search, to: "bookings#index"}
    end
    resources :places do
      collection {post :search, to: "places#index"}
      resources :reviews, only: [:show, :destroy]
    end
    resources :reviews do
      resources :comments, only: :destroy
    end
    resources :users do
      collection {post :search, to: "users#index"}
    end
    resources :discounts do
      collection {post :search, to: "discounts#index"}
    end
  end
end
