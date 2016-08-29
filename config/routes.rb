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

    get '/users/:id/outfitStories', to: 'users#outfitStories', as: 'outfitStories'

    get '/users/:id/userStories', to: 'users#userStories', as: 'userStories'

    patch 'closets/:id/photos/:photo_id/vote', to: 'photos#upvote', as: 'photoUpvote'

end
