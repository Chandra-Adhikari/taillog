Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Tail::Engine, at: "/log"
	  root :to => 'logs#index'
  # Tail::Engine.routes.draw do
	  resources :logs, only: :index
	  get 'grep' => 'logs#grep'
	  get 'flush' => 'logs#flush'

	# end

end
