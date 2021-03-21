class HomesController < ApplicationController
  def index
    @carousel_photos = Photograph.carousel_photos
    @marquees = Marquee.order('id')
    @client = Client.new
  end

  def client
    @client = Client.new(client_params)
    if @client.save
      Notification.create_notification(@client)
      redirect_to root_path, notice: 'Thank you for your interest. We will contact you soon.'
    else
      @carousel_photos = Photograph.carousel_photos
      @marquees = Marquee.order('id')
      render :index
    end
  end

  def gallery
    @photographs = Photograph.order(:id)
  end

  def contact

  end

  def about

  end

  private
  def client_params
    params.require(:client).permit(:name, :email, :contact_no, :note, :city)
  end
end
