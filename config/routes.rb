Rails.application.routes.draw do
  get 'posts/:id', to: 'posts#show'
  get 'show/:id', to: 'posts#show'
end
