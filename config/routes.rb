Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/:id', to: 'posts#show'
  # resources :posts, only: :show # same as line 3, but refactored using resources method, passing in an only option, so that we tell our program to only care about the show action that follows.
end
