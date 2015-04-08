Rails.application.routes.draw do

  root 'application#index'
  # get '*path' => 'application#index'

  resources :articles , only: [:index, :show]

end
