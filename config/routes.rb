Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    # omniauth_callbacks: 'users/omniauth_callbacks',
    passwords: 'users/passwords',
    conformations: 'users/conformations',
    unlocks: 'users/unlocks'
  }

  match '*path', via: :all, to: 'home#error_404'
end
