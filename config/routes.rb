Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "/static_pages/:page" => "static_pages#show", as: "static_pages"
  namespace :admin do
    root "static_pages#home"
    resources :categories, except: :show
  end
end
