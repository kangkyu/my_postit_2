PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get 'signup' => 'users#new'
  resources :users
end
