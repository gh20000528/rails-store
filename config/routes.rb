Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'stores#index'


  resources :stores do
    resources :comments , shallow: true , only: [:create, :edit, :update , :destroy]
  end
  resources :stores

end
