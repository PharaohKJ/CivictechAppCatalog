Rails.application.routes.draw do
  resources :civic_tech_applications, only: [:show, :index]
  root to: 'civic_tech_applications#index'
end
