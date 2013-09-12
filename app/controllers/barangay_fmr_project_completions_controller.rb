class BarangayFmrProjectCompletionsController < ApplicationController
  before_action :set_barangay_fmr_project_completion, only: [:show, :edit, :update, :destroy]

  # GET /barangay_fmr_project_completions
  # GET /barangay_fmr_project_completions.json
  def index
    @barangay_fmr_project_completions = BarangayFmrProjectCompletion.all
  end

  # GET /barangay_fmr_project_completions/1
  # GET /barangay_fmr_project_completions/1.json
  def show
  end

  # GET /barangay_fmr_project_completions/new
  def new
    @barangay_fmr_project_completion = BarangayFmrProjectCompletion.new
  end

  # GET /barangay_fmr_project_completions/1/edit
  def edit
  end

  # POST /barangay_fmr_project_completions
  # POST /barangay_fmr_project_completions.json
  def create
    @barangay_fmr_project_completion = BarangayFmrProjectCompletion.new(barangay_fmr_project_completion_params)

    respond_to do |format|
      if @barangay_fmr_project_completion.save
        format.html { redirect_to @barangay_fmr_project_completion, notice: 'Barangay fmr project completion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_fmr_project_completion }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_fmr_project_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_fmr_project_completions/1
  # PATCH/PUT /barangay_fmr_project_completions/1.json
  def update
    respond_to do |format|
      if @barangay_fmr_project_completion.update(barangay_fmr_project_completion_params)
        format.html { redirect_to @barangay_fmr_project_completion, notice: 'Barangay fmr project completion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_fmr_project_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_fmr_project_completions/1
  # DELETE /barangay_fmr_project_completions/1.json
  def destroy
    @barangay_fmr_project_completion.destroy
    respond_to do |format|
      format.html { redirect_to barangay_fmr_project_completions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_fmr_project_completion
      @barangay_fmr_project_completion = BarangayFmrProjectCompletion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_fmr_project_completion_params
      params.require(:barangay_fmr_project_completion).permit(:barangay_fmr_project_id, :tag, :name, :description, :project_length_provided, :date_confirmed, :user_id, :datetime_edited)
    end
end
