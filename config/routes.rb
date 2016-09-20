Rails.application.routes.draw do
  resources :enrollment_reports
  resources :enrollments do
    collection do
      get 'count'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# TODO:
#  version the API
#  nested resources
