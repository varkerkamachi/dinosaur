class HomeController < ApplicationController
  def index
  	@dinos = Dino.all
  end
end
