Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  namespace :api, defaults: { format: "json" } do
    get :me, to: 'me#me'
  end

  root to: "main#index"

  resources :people do
    collection do
      get 'people_list'
    end
  end

end
