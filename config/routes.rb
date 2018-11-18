Rails.application.routes.draw do
  resources :members, only: [:create]

  get :business, to: 'members#business'
  get :candidate, to: 'members#candidate'
  get :thanks, to: 'members#thanks'
  get :members, to: 'members#index'

  get :about, to: 'application#about'
  get :faq, to: 'application#faq'

  root 'application#home'
end
