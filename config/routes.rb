Colinandjessionrails::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'party/:id' => 'parties#show'
  get 'party' => 'parties#index', as: 'party'

  match "/rsvp" => redirect("/rsvps/new")

  resource :story, :registry, :noog, :wedding
  resources :rsvps
  resources :directions, only: [:index]
  resources :hotels, only: [:index]

  root to: "home#index"

end
