Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/faq'

  root 'welcome#index'

  resources :users, only: [:show]
  resources :items

#  authenticated :user do
#    root to: 'items#index', as: :authenticated_root
#  end

end