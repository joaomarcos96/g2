Rails.application.routes.draw do
  root 'news#index'

  devise_for :users, path: 'auth'

  scope 'admin', defaults: { must_auth: true } do
    resources :news
    resources :users
  end

  get 'admin', to: redirect('/admin/news')

  get 'news', to: 'news#index'
  get 'news/:id', to: 'news#show'
end
