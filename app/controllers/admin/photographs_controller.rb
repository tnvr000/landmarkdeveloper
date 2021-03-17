class Admin::PhotographsController < Admin::ApplicationController
  before_action :set_admin_photograph, only: %i[ show edit update destroy ]

  # GET /admin/photographs or /admin/photographs.json
  def index
    @admin_photographs = Admin::Photograph.all
  end

  # GET /admin/photographs/1 or /admin/photographs/1.json
  def show
  end

  # GET /admin/photographs/new
  def new
    @admin_photograph = Admin::Photograph.new
  end

  # GET /admin/photographs/1/edit
  def edit
  end

  # POST /admin/photographs or /admin/photographs.json
  def create
    @admin_photograph = Admin::Photograph.new(admin_photograph_params)

    respond_to do |format|
      if @admin_photograph.save
        format.html { redirect_to @admin_photograph, notice: "Photograph was successfully created." }
        format.json { render :show, status: :created, location: @admin_photograph }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_photograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/photographs/1 or /admin/photographs/1.json
  def update
    respond_to do |format|
      if @admin_photograph.update(admin_photograph_params)
        format.html { redirect_to @admin_photograph, notice: "Photograph was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_photograph }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_photograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/photographs/1 or /admin/photographs/1.json
  def destroy
    @admin_photograph.destroy
    respond_to do |format|
      format.html { redirect_to admin_photographs_url, notice: "Photograph was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_photograph
      @admin_photograph = Admin::Photograph.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_photograph_params
      params.require(:admin_photograph).permit(:caption)
    end
end
