Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homepages#index'


  #api/v1/stores/:id/sort
  namespace :api do
    namespace :v1 do
      resources :stores, only: [] do
        member do
          patch :sort
        end
      end
    end
  end


  resources :stores do
    resources :comments , shallow: true , only: [:create, :edit, :update , :destroy]
  end
  resources :stores

  get "/homepages" , to:"homepages#index"

end
