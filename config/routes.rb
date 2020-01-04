Projectse::Application.routes.draw do
  resources :tabel5s
  resources :tests
  resources :games
  resources :items
  root :to => redirect('/items')
end