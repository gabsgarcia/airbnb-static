Rails.application.routes.draw do
  # Routes are the front door of your app.
  # When a browser sends a request (e.g. GET /flats/3), Rails reads this file
  # to decide which controller and action should handle it.
  # Pattern: verb "url_path", to: "controller#action"

  # Rails built-in health check — you can ignore this for now.
  get "up" => "rails/health#show", as: :rails_health_check

  # root sets the homepage ("/").
  # This tells Rails: "When someone visits /, run the index action in FlatsController."
  root "flats#index"

  # :id is a dynamic segment — it can be any number (e.g. /flats/1, /flats/42).
  # Rails captures it and makes it available in the controller as params[:id].
  # `as: :apartment` creates a named path helper called apartment_path(id)
  # that you can use in views instead of writing the URL by hand.
  get "/flats/:id", to: "flats#show", as: :apartment
end
