Rails.application.routes.draw do
  get "/static_pages/:page" => "static_pages#show"
end
