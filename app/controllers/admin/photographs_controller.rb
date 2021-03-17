class Admin::PhotographsController < Admin::ApplicationController
  before_action :set_admin_photograph, only: %i[ show edit reupload update destroy ]

  # GET /admin/photographs or /admin/photographs.json
  def index
    @photographs = Photograph.all
  end

  # GET /admin/photographs/1 or /admin/photographs/1.json
  def show
  end

  # GET /admin/photographs/new
  def new
    @photograph = Photograph.new
  end

  # GET /admin/photographs/1/edit
  def edit
  end

  # GET /admin/photographs/1/reupload
  def reupload
  end

  # POST /admin/photographs or /admin/photographs.json
  def create
    @photograph = Photograph.new(admin_photograph_params)

    respond_to do |format|
      if @photograph.save
        format.html { redirect_to admin_photographs_url, notice: "Photograph was successfully created." }
        format.json { render :show, status: :created, location: @photograph }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/photographs/1 or /admin/photographs/1.json
  def update
    respond_to do |format|
      if @photograph.update(admin_photograph_params)
        format.html { redirect_to admin_photograph_url(@photograph), notice: "Photograph was successfully updated." }
        format.json { render :show, status: :ok, location: @photograph }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/photographs/1 or /admin/photographs/1.json
  def destroy
    @photograph.destroy
    respond_to do |format|
      format.html { redirect_to admin_photographs_url, notice: "Photograph was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin_photograph
    @photograph = Photograph.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def admin_photograph_params
    params.require(:photograph).permit(:caption, :photo, :use_in_carousel)
  end
end
