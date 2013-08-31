class RegisteringAgenciesController < ApplicationController
  before_action :set_registering_agency, only: [:show, :edit, :update, :destroy]

  # GET /registering_agencies
  # GET /registering_agencies.json
  def index
    @registering_agencies = RegisteringAgency.all
  end

  # GET /registering_agencies/1
  # GET /registering_agencies/1.json
  def show
  end

  # GET /registering_agencies/new
  def new
    @registering_agency = RegisteringAgency.new
  end

  # GET /registering_agencies/1/edit
  def edit
  end

  # POST /registering_agencies
  # POST /registering_agencies.json
  def create
    @registering_agency = RegisteringAgency.new(registering_agency_params)

    respond_to do |format|
      if @registering_agency.save
        format.html { redirect_to @registering_agency, notice: 'Registering agency was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registering_agency }
      else
        format.html { render action: 'new' }
        format.json { render json: @registering_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registering_agencies/1
  # PATCH/PUT /registering_agencies/1.json
  def update
    respond_to do |format|
      if @registering_agency.update(registering_agency_params)
        format.html { redirect_to @registering_agency, notice: 'Registering agency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registering_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registering_agencies/1
  # DELETE /registering_agencies/1.json
  def destroy
    @registering_agency.destroy
    respond_to do |format|
      format.html { redirect_to registering_agencies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registering_agency
      @registering_agency = RegisteringAgency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registering_agency_params
      params.require(:registering_agency).permit(:name, :description)
    end
end
