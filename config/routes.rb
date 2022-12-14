Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    confirmations: 'users/confirmations'
  }
  resources :users, only: %i[index show]
  root "static_public#landing_page"
  get 'privacy', to: "static_public#privacy"
  get 'terms', to: "static_public#terms"
end
