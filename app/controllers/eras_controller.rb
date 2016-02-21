class ErasController < ApplicationController
  def index
  	@eras = Era.all
  end
end
