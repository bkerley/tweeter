Rails.application.routes.draw do
  get 'statuses', to: 'statuses#index', page: 1
  get 'statuses/page/:page', to: 'statuses#index'

  get 'statuses/show'

  get 'statuses/new'
end
