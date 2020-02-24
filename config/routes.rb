Rails.application.routes.draw do
  get 'about', to: "static#about"
  get 'posts/:id', to: 'posts#show'
end
