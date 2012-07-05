Colinandjessionrails::Application.routes.draw do

  get 'party/:id' => 'parties#show'
  get 'party' => 'parties#index', as: 'party'

  resource :story, :registry, :noog, :wedding
  resources :rsvps
  resources :directions, only: [:index]
  resources :hotels, only: [:index]

  root to: "home#index"

end
