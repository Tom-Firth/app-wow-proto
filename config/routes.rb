Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/search' => 'users#onsearch', as: :usearch

  resources :users
  resources :personnages

  post '/user/dispo/:id' => 'users#dispo', as: :dispo
  root 'users#home'
end
