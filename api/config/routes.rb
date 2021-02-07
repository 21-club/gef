# frozen_string_literal: true

Gef::Core::Engine.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :content_elements
      resources :content_types
      resources :content_types_elements
      resources :contents
      resources :elements
      resources :elements_datas
    end
  end
end
