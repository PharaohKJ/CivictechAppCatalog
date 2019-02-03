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

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_civic_tech_application
    @civic_tech_application = CivicTechApplication.find(params[:id])
  end
end
