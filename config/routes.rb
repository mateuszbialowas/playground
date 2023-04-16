# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  mount Lookbook::Engine, at: '/lookbook' if Rails.env.development?
  mount Sidekiq::Web => '/sidekiq' if Rails.env.development?
  root 'pages#home'
end
