Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/articles", to: "articles#index"
  get "article/:id", to: "articles#article", as: "article"
  get "articles/new", to: "articles#new", as: "new"
  post "articles", to: "articles#create"
  get "article/:id/edit", to: "articles#edit", as: "edit"
  patch "article/:id", to: "articles#update"
  delete "articles/:id", to: "articles#delete"
end
