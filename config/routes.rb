Rails.application.routes.draw do

  devise_for :users

  resources :enrollments do
    get 'count', on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
