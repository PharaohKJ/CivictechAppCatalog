class CivicTechApplicationsController < ApplicationController
  before_action :set_civic_tech_application, only: [:show, :edit, :update, :destroy]

  # GET /civic_tech_applications
  # GET /civic_tech_applications.json
  def index
    @civic_tech_applications = CivicTechApplication.all
  end

  # GET /civic_tech_applications/1
  # GET /civic_tech_applications/1.json
  def show
  end

  # GET /civic_tech_applications/new
  def new
    @civic_tech_application = CivicTechApplication.new
  end

  # GET /civic_tech_applications/1/edit
  def edit
  end

  # POST /civic_tech_applications
  # POST /civic_tech_applications.json
  def create
    @civic_tech_application = CivicTechApplication.new(civic_tech_application_params)

    respond_to do |format|
      if @civic_tech_application.save
        format.html { redirect_to @civic_tech_application, notice: 'Civic tech application was successfully created.' }
        format.json { render :show, status: :created, location: @civic_tech_application }
      else
        format.html { render :new }
        format.json { render json: @civic_tech_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civic_tech_applications/1
  # PATCH/PUT /civic_tech_applications/1.json
  def update
    respond_to do |format|
      if @civic_tech_application.update(civic_tech_application_params)
        format.html { redirect_to @civic_tech_application, notice: 'Civic tech application was successfully updated.' }
        format.json { render :show, status: :ok, location: @civic_tech_application }
      else
        format.html { render :edit }
        format.json { render json: @civic_tech_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civic_tech_applications/1
  # DELETE /civic_tech_applications/1.json
  def destroy
    @civic_tech_application.destroy
    respond_to do |format|
      format.html { redirect_to civic_tech_applications_url, notice: 'Civic tech application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civic_tech_application
      @civic_tech_application = CivicTechApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civic_tech_application_params
      params.require(:civic_tech_application).permit(:name, :url, :description)
    end
end
