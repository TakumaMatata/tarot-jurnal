Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'pages/contact'
  resources :users, only: [:index, :show, :edit, :update]
  resources :logs

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
