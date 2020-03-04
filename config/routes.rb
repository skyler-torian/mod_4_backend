Rails.application.routes.draw do
  resources :songs
  resources :users
  resources :saved_songs
  post '/songs/:id', to: 'songs#create'
  post '/fakelogin', to: 'auth#fake_create'

end
