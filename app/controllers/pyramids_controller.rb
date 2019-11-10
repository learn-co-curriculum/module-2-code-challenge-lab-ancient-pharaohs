class PyramidsController < ApplicationController

  def index 
    @pyramids = Pyramid.all
  end 
 
  def show 
    #Get just one pyramid and send it to the show view.
  end 
end
