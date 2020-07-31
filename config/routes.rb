Rails.application.routes.draw do
  # For details on the DSL available within thfile, see http://guides.rubyonrails.org/routing.html
  get 'posts/:id', to: 'posts#show'
  
end
