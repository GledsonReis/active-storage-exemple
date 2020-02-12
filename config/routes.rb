# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'buckets#index'
  resources :buckets do
    resources :file_uploads, only: %i[new create destroy]
  end
end
