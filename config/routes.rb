Rails.application.routes.draw do

	# rutas para todas las funciones de autenticacion
  	devise_for :users, :controllers => { 
		:registrations => "users/registrations",
		:sessions => "users/sessions",
		:confirmations => "users/confirmations",
		:passwords => "users/passwords",
		:unlocks => "users/unlocks",
		:mailer => "users/mailer"
  	}

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'welcome#index'
	get '/home', to: 'home#index', as: 'home'

	namespace :api, defaults: { format: 'json' } do
		namespace :v1 do 
			resources :users, only: [:index]
		end
	end
end
