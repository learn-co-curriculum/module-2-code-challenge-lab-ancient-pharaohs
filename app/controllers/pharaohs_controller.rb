class PharaohsController < ApplicationController
  def index 
    @pharaohs = Pharaoh.all 
  end 

  
end
