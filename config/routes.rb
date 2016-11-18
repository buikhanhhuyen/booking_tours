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
  end
  resources :reviews do
    resources :comments
  end
  resources :comments do
    resources :comments
  end

  namespace :admin do
    root "static_pages#home"
    get "static_pages/:page" => "static_pages#show"
    resources :categories
    resources :tours do
        collection {post :search, to: "tours#index"}
      end
    resources :places do
      collection {post :search, to: "places#index"}
      resources :reviews, only: [:show, :destroy]
    end
    resources :reviews do
      resources :comments, only: :destroy
    end
  end
end
