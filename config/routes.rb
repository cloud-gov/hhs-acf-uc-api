Rails.application.routes.draw do
  resources :enrollments, :enrollment_reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# TODO:
#  version the API
#  nested resources
