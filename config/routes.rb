Rails.application.routes.draw do
  resources :referrals do
    get 'count', on: :collection
  end

  resources :discharges do
    get 'count', on: :collection
  end

  resources :in_care do
    get 'count', on: :collection
  end
end
