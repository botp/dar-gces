class BarangayIrrigationProjectCompletionsController < ApplicationController
  before_action :set_barangay_irrigation_project_completion, only: [:show, :edit, :update, :destroy]

  # GET /barangay_irrigation_project_completions
  # GET /barangay_irrigation_project_completions.json
  def index
    @barangay_irrigation_project_completions = BarangayIrrigationProjectCompletion.all
  end

  # GET /barangay_irrigation_project_completions/1
  # GET /barangay_irrigation_project_completions/1.json
  def show
  end

  # GET /barangay_irrigation_project_completions/new
  def new
    @barangay_irrigation_project_completion = BarangayIrrigationProjectCompletion.new
  end

  # GET /barangay_irrigation_project_completions/1/edit
  def edit
  end

  # POST /barangay_irrigation_project_completions
  # POST /barangay_irrigation_project_completions.json
  def create
    @barangay_irrigation_project_completion = BarangayIrrigationProjectCompletion.new(barangay_irrigation_project_completion_params)

    respond_to do |format|
      if @barangay_irrigation_project_completion.save
        format.html { redirect_to @barangay_irrigation_project_completion, notice: 'Barangay irrigation project completion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_irrigation_project_completion }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_irrigation_project_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_irrigation_project_completions/1
  # PATCH/PUT /barangay_irrigation_project_completions/1.json
  def update
    respond_to do |format|
      if @barangay_irrigation_project_completion.update(barangay_irrigation_project_completion_params)
        format.html { redirect_to @barangay_irrigation_project_completion, notice: 'Barangay irrigation project completion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_irrigation_project_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_irrigation_project_completions/1
  # DELETE /barangay_irrigation_project_completions/1.json
  def destroy
    @barangay_irrigation_project_completion.destroy
    respond_to do |format|
      format.html { redirect_to barangay_irrigation_project_completions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_irrigation_project_completion
      @barangay_irrigation_project_completion = BarangayIrrigationProjectCompletion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_irrigation_project_completion_params
      params.require(:barangay_irrigation_project_completion).permit(:barangay_irrigation_project_id, :tag, :name, :description, :service_area_provided, :date_confirmed, :user_id, :datetime_edited)
    end
end
