Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# namespace :api, path: '/', constraints: { subdomain: 'api' } do
  # namespace :api do
    resources :users do
      resources :closets do
        resources :photos do
        end
      end
    end
  # end
end
