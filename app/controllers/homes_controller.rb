class HomesController < ApplicationController
  def index
    @carousel_photos = Photograph.carousel_photos
    @marquees = Marquee.order('id')
    @client = Client.new
  end

  def gallery
    
  end

  def contact

  end

  def about

  end
end
