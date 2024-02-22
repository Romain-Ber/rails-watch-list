Rails.application.routes.draw do
  root to: "bookmarks#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create, :index]
  end
  resources :bookmarks, only: [:destroy]
end
