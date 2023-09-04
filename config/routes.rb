Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :new]
    resources :likes, only: :create do
      collection do
        delete :destroy
      end
    end
  end
  devise_for :users # criação de rotas do devise
  root "site#index" # controller#função
end
