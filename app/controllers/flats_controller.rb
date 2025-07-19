require "open-uri"

class FlatsController < ApplicationController

  def index
    # action para mostrar todos os flats que vem da url
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats agora retorna uma hash com todos os flats
    @flats = JSON.parse(URI.parse(url).read)
    
  end

  # def novarota
    
  # end

end


