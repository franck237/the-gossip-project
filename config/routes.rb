Rails.application.routes.draw do
  root 'home#index'
  get '/home', to: 'home#index'
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#presentation'
  get '/welcome/:first_name', to: 'welcome#get_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
