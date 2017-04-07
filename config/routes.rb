Rails.application.routes.draw do
  resources :vagas do
    post :reservar, to: 'reservas#reservar'
  end
  get 'overview', to: 'vagas#overview'
  root 'vagas#index'
end
