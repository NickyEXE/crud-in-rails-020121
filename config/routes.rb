Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kickboxers, only: [:index, :show]
  # get '/kickboxers', to: 'kickboxers#index'
  # get '/kickboxers/:id', to: 'kickboxers#show', as: "kickboxer"
  get '/headliner/:fighter_one/:fighter_two', to: 'kickboxers#headliner', as: "headliner"

end
