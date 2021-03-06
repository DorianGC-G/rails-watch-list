Rails.application.routes.draw do
  get "bookmarks/new"
  get "bookmarks/create"
  get "bookmarks/delete"
  root to: 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:new, :create, :show, :index] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
