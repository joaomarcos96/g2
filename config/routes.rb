Rails.application.routes.draw do
  scope 'admin' do
    resources :news
  end
end
