class Admin::MarqueesController < Admin::ApplicationController
  before_action :set_marquee, only: %i[show edit update destroy]
  def index
    @marquees = Marquee.order('id')
  end

  def new
    @marquee = Marquee.new
  end

  def create
    @marquee = Marquee.new(marquee_params)
    if @marquee.save
      redirect_to :admin_marquees, notice: 'Marquee created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit
    
  end

  def update
    @marquee.assign_attributes(marquee_params)
    if @marquee.save
      redirect_to admin_marquees_url, notice: 'Marquee updated successfully.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @marquee.destroy
      flash[:notice] = 'Marquee deleted successfully.'
    else
      flash[:notice] = 'Marquee could not be deleted.'
    end
    redirect_to admin_marquees_url
  end

  private
  def marquee_params
    params.require(:marquee).permit(:text)
  end

  def set_marquee
    @marquee = Marquee.find_by_id(params[:id])
  end
end
