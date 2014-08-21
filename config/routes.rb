Rails.application.routes.draw do
  get 'statuses', to: 'statuses#index', page: 1
  get 'statuses/page/:page', to: 'statuses#index'

  post 'statuses', to: 'statuses#create'
  
  get 'statuses/show'

  get 'statuses/new'
end
