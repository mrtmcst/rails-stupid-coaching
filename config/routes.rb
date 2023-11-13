# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  get '/ask', to: 'questions#ask'
  get '/answer', to: 'questions#answer'
end
