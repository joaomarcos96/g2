Rails.application.routes.draw do
  root 'news#index'

  devise_for :users, path: 'auth'

  scope 'admin' do
    resources :news
    # resources :users
  end
end
