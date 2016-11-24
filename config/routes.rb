Rails.application.routes.draw do
	resource :session
  resources :registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "events#index"
  resources :events
end
