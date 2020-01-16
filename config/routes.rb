Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'posts/:id', to: 'posts#show'
  # the above and below code both work but the conventional rails method is to use the resources method
  # to accomplish this.
  resources :posts, only: :show
end
