Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # pagina principal
  root to: "flats#index"
  # pagina que mostra 1 apartamento
  get "flats/:id", to: "flats#show", as: :flat
end
