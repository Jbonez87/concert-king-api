# == Route Map
#
#          Prefix Verb   URI Pattern                    Controller#Action
#    api_v1_users GET    /api/v1/users(.:format)        api/v1/users#index
#                 POST   /api/v1/users(.:format)        api/v1/users#create
#     api_v1_user GET    /api/v1/users/:id(.:format)    api/v1/users#show
#                 PATCH  /api/v1/users/:id(.:format)    api/v1/users#update
#                 PUT    /api/v1/users/:id(.:format)    api/v1/users#update
#                 DELETE /api/v1/users/:id(.:format)    api/v1/users#destroy
# api_v1_concerts GET    /api/v1/concerts(.:format)     api/v1/concerts#index
#                 POST   /api/v1/concerts(.:format)     api/v1/concerts#create
#  api_v1_concert GET    /api/v1/concerts/:id(.:format) api/v1/concerts#show
#                 PATCH  /api/v1/concerts/:id(.:format) api/v1/concerts#update
#                 PUT    /api/v1/concerts/:id(.:format) api/v1/concerts#update
#                 DELETE /api/v1/concerts/:id(.:format) api/v1/concerts#destroy
#

Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :api do
    namespace :v1 do
      resources :users, :concerts, only: [:show]
    end
  end
  namespace :services do
    namespace :ticketmaster do
      resources :shows
    end
  end
end
