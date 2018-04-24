Rails.application.routes.draw do
  get '/' => 'sessions#index'
  post '/sessions/login' => 'sessions#login'
  get '/users/register' => 'users#register'
  post '/users/create'  => 'users#create'
  delete '/users/:user_id/logout' => 'sessions#destroy'

  get '/users/:user_id/allsongs' => 'songs#allsongs'
  post '/users/:user_id/newsong' => 'songs#newsong'
  get '/songs/:song_id/song_info' => 'songs#song_info'
  post '/songs/:song_id/add' => 'songs#add'
  get '/users/:user_id/playlist' => 'songs#playlist'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
