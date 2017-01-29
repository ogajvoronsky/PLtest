Rails.application.routes.draw do
  resources :cards do
    collection { post :import_csv, :clear }
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cards#index'
end
