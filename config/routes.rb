Rails.application.routes.draw do
  resources :subjects
  resources :categories
  resources :bookmarks
  root "bookmarks#index"

  

  get "json", to: "categories#json"
  get "json/:id", to: "categories#perid"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
