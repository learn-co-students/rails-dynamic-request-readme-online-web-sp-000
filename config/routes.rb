Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: :show
  # can also use the original way
  # get 'posts/:id', to: 'posts#show'
end
