require 'sidekiq/web'
Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end

  mount Sidekiq::Web, at: '/sidekiq'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :articles, only: %i[index show new create] 
end
