Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create, :edit] #adding :update here will make a PUT route 
  patch 'articles/:id', to: 'articles#update'
end
