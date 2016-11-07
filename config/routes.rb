Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"

  devise_for :users
  root "static_pages#home"
  get "/static_pages/:page" => "static_pages#show", as: "static_pages"
  resources :places do
    resources :reviews, except: :index
  end
  resources :reviews do
    resources :comments
  end
  resources :comments do
    resources :comments
  end

  namespace :admin do
    root "static_pages#home"
    resources :categories, except: :show
    resources :tours
    resources :places do
      resources :reviews, only: [:show, :destroy]
    end
    resources :reviews do
      resources :comments, only: :destroy
    end
  end
end
