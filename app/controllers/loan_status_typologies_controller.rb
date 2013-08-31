class LoanStatusTypologiesController < ApplicationController
  before_action :set_loan_status_typology, only: [:show, :edit, :update, :destroy]

  # GET /loan_status_typologies
  # GET /loan_status_typologies.json
  def index
    @loan_status_typologies = LoanStatusTypology.all
  end

  # GET /loan_status_typologies/1
  # GET /loan_status_typologies/1.json
  def show
  end

  # GET /loan_status_typologies/new
  def new
    @loan_status_typology = LoanStatusTypology.new
  end

  # GET /loan_status_typologies/1/edit
  def edit
  end

  # POST /loan_status_typologies
  # POST /loan_status_typologies.json
  def create
    @loan_status_typology = LoanStatusTypology.new(loan_status_typology_params)

    respond_to do |format|
      if @loan_status_typology.save
        format.html { redirect_to @loan_status_typology, notice: 'Loan status typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @loan_status_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @loan_status_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_status_typologies/1
  # PATCH/PUT /loan_status_typologies/1.json
  def update
    respond_to do |format|
      if @loan_status_typology.update(loan_status_typology_params)
        format.html { redirect_to @loan_status_typology, notice: 'Loan status typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @loan_status_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_status_typologies/1
  # DELETE /loan_status_typologies/1.json
  def destroy
    @loan_status_typology.destroy
    respond_to do |format|
      format.html { redirect_to loan_status_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_status_typology
      @loan_status_typology = LoanStatusTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_status_typology_params
      params.require(:loan_status_typology).permit(:name, :description)
    end
end
