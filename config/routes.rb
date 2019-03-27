Rails.application.routes.draw do

  resources :posts, only: :show
#  get "posts/:id", to: "posts#show"

end
