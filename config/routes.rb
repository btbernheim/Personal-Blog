Rails.application.routes.draw do

  devise_for :users
	root "posts#index"

	resources :posts do
		resources :comments
	end

	resources :about, only: [:index]

end
