Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tops#index'
  
  resources :shops do
    resources :items
  end

end
