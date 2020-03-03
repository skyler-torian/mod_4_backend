Rails.application.routes.draw do
  resources :songs
  resources :users
  post '/fakelogin', to: 'auth#fake_create'

end
