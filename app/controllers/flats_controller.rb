require "open-uri" # needed to fetch a URL with URI.parse(...).read

# Controllers receive requests from the router and prepare data for the view.
# Every public method in a controller that matches a route is called an "action".
class FlatsController < ApplicationController
  # Instead of a database, we fetch flat data from this public JSON file.
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  # before_action runs set_flats automatically before EVERY action in this controller.
  # This way we don't have to call it manually inside index and show.
  before_action :set_flats

  # Handles GET /  (the homepage)
  # @flats is already set by before_action, so we don't need any extra code here.
  # Rails will automatically render app/views/flats/index.html.erb.
  def index
  end

  # Handles GET /flats/:id  (a single flat's page)
  # params[:id] contains whatever number was in the URL (e.g. "3" for /flats/3).
  # We search @flats for the flat whose id matches, and store it in @flat.
  # Instance variables (starting with @) are shared with the view automatically.
  def show
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  # Private methods are helpers for the controller — the router never calls them directly.
  # This method fetches the JSON from the URL, parses it into a Ruby array, and stores
  # it in @flats so both index and show can use it.
  def set_flats
    @flats = JSON.parse(URI.parse(FLATS_URL).read)
  end
end
