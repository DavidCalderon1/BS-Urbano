Rails.application.routes.draw do

  resources :subjects
  resources :suburbs
  resources :localities
  resources :tips
  resources :states
	resources :notifications
	resources :subjects
	resources :routes
	resources :operators
	resources :suggestions
	resources :tips
	resources :garbage_types
	resources :states
	resources :localities
	resources :suburbs
	resources :publications
	# rutas para todas las funciones de autenticacion
  devise_for :users, :controllers => { 
		:registrations => "users/registrations",
		:sessions => "users/sessions",
		:confirmations => "users/confirmations",
		:passwords => "users/passwords",
		:unlocks => "users/unlocks",
		:mailer => "users/mailer"
  }

  scope "/admin" do
    resources :users
  end

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'welcome#index'
	get '/home', to: 'home#index', as: 'home'

	namespace :api, defaults: { format: 'json' } do
		namespace :v1 do 
			resources :users, only: [:index, :show]
			resources :suggestions

			devise_scope :user do
				match '/sessions' => 'sessions#create', via: :post
				match '/sessions' => 'sessions#destroy', via: :delete
			end
		end
	end
	


end
