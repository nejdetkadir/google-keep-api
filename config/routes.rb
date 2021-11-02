Rails.application.routes.draw do
  devise_for :users, 
    controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }, 
    defaults: { format: :json }

  root to: 'welcome#index'

  resources :colors, except: [:edit]
  resources :labels, except: [:edit]
end
