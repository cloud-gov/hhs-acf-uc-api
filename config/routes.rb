Rails.application.routes.draw do

  resources :enrollments do
    get 'count', on: :collection
  end

  resources :placements do
    get 'count', on: :collection
  end

  resources :referrals do
    get 'count', on: :collection
  end

  resources :discharges do
    get 'count', on: :collection
  end

  resources :in_care do
    get 'count', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
