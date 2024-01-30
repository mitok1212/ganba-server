Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope 'user' do
    get '/hello', to: 'users#hello'
    get '/friend/:name', to: 'users#get_friend'
    post '/create', to: 'users#create'
    post '/login', to: 'users#login'
    post '/login/status', to: 'users#login_status_update'
    post '/login/time', to: 'users#login_times_update'
  end

  scope 'friend' do
    post '/add', to: 'friends#add_friend'
    post '/delete', to: 'friends#delete_friend'
    get '/search/:myself', to:'frinends#search'
  end

  scope 'reaction' do
    post '/add', to: 'reactions#add_reaction'
    post '/update', to: 'reactions#update_reaction'
    get '/search/:myname', to: 'reactions#search_reaction'
  end

  scope 'studynote' do
    post '/add', to: 'studynotes#add_studynote'
    post '/date', to: 'studynotes#date'
    post '/time', to: 'studynotes#studytime'
    post '/goal', to: 'studynotes#goal'
  end
end
