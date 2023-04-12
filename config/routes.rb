Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'stores#index'


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

end
