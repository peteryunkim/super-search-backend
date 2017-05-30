Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :search, only: [:index, :create, :destroy]
      resources :note, only: [:index, :create, :edit]
      delete '/note', to:'note#destroy'
      patch '/note', to:'note#update'
    end
  end
end
