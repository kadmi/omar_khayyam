Rails.application.routes.draw do
  root 'rubaiyats#home'
  get '/:id(.:format)' => 'rubaiyats#show', as: 'rubaiyat'
  get '/rubaiyats/search' => 'rubaiyats#search', as: 'search'
  post '/random' => 'rubaiyats#random', as: 'random'
end
