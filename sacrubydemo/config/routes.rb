Sacrubydemo::Application.routes.draw do
  root 'static#home'
  get '/home', to: 'static#home'

  resources :bikes
end
