Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # resources :students, only: :show
end
