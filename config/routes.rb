Rails.application.routes.draw do
  get 'students/:id', to: 'students#show'
  resources :students, only: :index
end
