Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  
  get "/order", to: "pages#order"

  get "/users", to: "users#index"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users/", to: "users#create"

  get "/login/new", to: "login#new", as: "new_login"
  post "/login", to: "login#create"
  
  get "/logout", to: "login#destroy"
  
  

  get "/dishes", to: "dishes#index", as: "dishes"
  get "dishes/:id", to: "dishes#show", as: "dish"
  get "dishes/burrito/new", to: "dishes#new_burrito", as: "new_burrito"
  get "dishes/burrito-bowl/new", to: "dishes#new_burrito_bowl", as: "new_burrito_bowl"
  post "dishes/", to: "dishes#create"
  get "dishes/:id/edit", to: "dishes#edit"
  patch "/dishes/:id", to: "dishes#update"
  delete "/dishes/:id", to: "dishes#destroy", as: 'delete_dish'
  
  
 
  
  get "bags/:id", to: "bags#show", as: "bag"

  get "/api/form", to: "api#form"
  post "/api/", to: "api#location"
  get "/api/select", to: "api#select"
end
