Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  
  get "/order", to: "pages#order"
  get "/our_values", to: "pages#our_values"

  get "/dishes", to: "dishes#index"
  get "dishes/burrito/new", to: "dishes#new_burrito", as: "new_burrito"
  get "dishes/burrito-bowl/new", to: "dishes#new_burrito_bowl", as: "new_burrito_bowl"
  post "dishes/", to: "dishes#create"
  get "/dishes/:id", to: "dishes#show", as: "dish"

  
  
  get "bag", to: "bag#index"
end
