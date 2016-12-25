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
  resources :bookings, except: [:edit, :destroy] do
    resources :payments, only: [:new, :create, :update]
  end
  resources :reviews do
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  resources :users
  resources :discounts, only: [:show, :index]
  resources :categories, only: :show
  resources :payments, only: [:show, :index]

  namespace :admin do
    root "static_pages#home", as: "static_pages"
    get "static_pages/:page" => "static_pages#show"
    resources :categories, except: [:show]
    resources :tours do
      collection {post :search, to: "tours#index"}
    end
    resources :bookings, except: [:new, :create] do
      collection {post :search, to: "bookings#index"}
    end
    resources :places, except: [:show] do
      collection {post :search, to: "places#index"}
      resources :reviews, only: [:show, :destroy]
    end
    resources :reviews, only: [:show, :index, :destroy] do
      resources :comments, only: [:show, :destroy]
    end
    resources :users do
      collection {post :search, to: "users#index"}
    end
    resources :discounts do
      collection {post :search, to: "discounts#index"}
    end
    resources :payments,  only: [:show, :index]
    resources :notifications, only: :index
  end
end
