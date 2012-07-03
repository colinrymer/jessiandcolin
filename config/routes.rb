Colinandjessionrails::Application.routes.draw do

  get 'party/:id' => 'parties#show'
  get 'party' => 'parties#index', as: 'party'

  resource :story, :registry, :noog, :wedding, :hotel, :direction
  resources :rsvps

  root to: "home#index"

end
