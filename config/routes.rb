Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :people
    end
  end
end
