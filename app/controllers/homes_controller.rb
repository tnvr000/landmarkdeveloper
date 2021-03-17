class HomesController < ApplicationController
  def index
    @carousel_photos = Photograph.carousel_photos
  end

  def gallery
    
  end

  def contact

  end

  def about

  end
end
