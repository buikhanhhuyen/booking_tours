Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "/static_pages/:page" => "static_pages#show", as: "static_pages"
end
