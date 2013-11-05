PollywogRanchRailsRuby003::Application.routes.draw do

  resources :ponds, :frogs, :tadpoles
  get '/ponds/:id/destroy' => 'ponds#destroy'
  get '/frogs/:id/destroy' => 'frogs#destroy'
  get '/frogs/:id/tadpoles/new' => 'tadpoles#new'

  # get '/ponds' => 'ponds#index'
  # post '/ponds' => 'ponds#create'
  # get '/ponds/new' => 'ponds#new'
  # get '/ponds/:id' => 'ponds#show'
  # get '/ponds/:id/edit' => 'ponds#edit'
  # post '/ponds/:id/update' => 'ponds#update' 

end
