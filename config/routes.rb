Rails.application.routes.draw do
  get '/' => 'menu_items#index'

  get '/menu_items/new' => 'menu_items#new'
  post '/menu_items' => 'menu_items#create'
  get '/menu_items/:id' => 'menu_items#show'
  get '/menu_items/:id/edit' => 'menu_items#edit'
  patch '/menu_items/:id' => 'menu_items#update'
  delete '/products/:id' => 'products#destroy'

  get '/carted_items' =>'carted_items#index'
  post '/carted_items' => 'carted_items#create'
  delete '/carted_items/:id' => 'carted_items#destroy''
end
