Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  resources :productive_items do
    collection do
      get :suggested
    end
  end
end
