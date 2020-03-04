Rails.application.routes.draw do
  resources :songs
  resources :users
  resources :saved_songs
  post '/fakelogin', to: 'auth#fake_create'

end
