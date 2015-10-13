Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

 	root 'welcome#index'

	get 'signup'  => 'users#new'
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

  	resources :users

  	resources :account_activations, only: [:edit]

  	resources :password_resets, only: [:new, :create, :edit, :update]

    resources :posts, only: [:create, :destroy]

end
