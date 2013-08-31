class LoanAccessTypologiesController < ApplicationController
  before_action :set_loan_access_typology, only: [:show, :edit, :update, :destroy]

  # GET /loan_access_typologies
  # GET /loan_access_typologies.json
  def index
    @loan_access_typologies = LoanAccessTypology.all
  end

  # GET /loan_access_typologies/1
  # GET /loan_access_typologies/1.json
  def show
  end

  # GET /loan_access_typologies/new
  def new
    @loan_access_typology = LoanAccessTypology.new
  end

  # GET /loan_access_typologies/1/edit
  def edit
  end

  # POST /loan_access_typologies
  # POST /loan_access_typologies.json
  def create
    @loan_access_typology = LoanAccessTypology.new(loan_access_typology_params)

    respond_to do |format|
      if @loan_access_typology.save
        format.html { redirect_to @loan_access_typology, notice: 'Loan access typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @loan_access_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @loan_access_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_access_typologies/1
  # PATCH/PUT /loan_access_typologies/1.json
  def update
    respond_to do |format|
      if @loan_access_typology.update(loan_access_typology_params)
        format.html { redirect_to @loan_access_typology, notice: 'Loan access typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @loan_access_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_access_typologies/1
  # DELETE /loan_access_typologies/1.json
  def destroy
    @loan_access_typology.destroy
    respond_to do |format|
      format.html { redirect_to loan_access_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_access_typology
      @loan_access_typology = LoanAccessTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_access_typology_params
      params.require(:loan_access_typology).permit(:name, :description)
    end
end
