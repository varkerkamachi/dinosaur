class HomeController < ApplicationController

  def index
    @pagetitle = "Welcome to Dinos.com Homepage - browse some dinos!"
    @pagedescription = "Dinos.com - home of the last surviving dinos"
    @teaserset = Dino.limit(5)
  end

end
