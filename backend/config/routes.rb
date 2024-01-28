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

end
