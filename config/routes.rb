Rails.application.routes.draw do
	resources :gossip
	resources :user
	resources :city
 # get '/user:num_author', to: 'user#author'
 # get 'gossip:num_gossip', to: 'gossip#show', as: 'gossip_path'
  root 'gossip#index'
  get '/home', to: 'gossip#index'
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#presentation'
  get '/welcome/:first_name', to: 'welcome#get_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
