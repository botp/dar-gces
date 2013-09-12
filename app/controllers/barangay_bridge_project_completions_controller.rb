class BarangayBridgeProjectCompletionsController < ApplicationController
  before_action :set_barangay_bridge_project_completion, only: [:show, :edit, :update, :destroy]

  # GET /barangay_bridge_project_completions
  # GET /barangay_bridge_project_completions.json
  def index
    @barangay_bridge_project_completions = BarangayBridgeProjectCompletion.all
  end

  # GET /barangay_bridge_project_completions/1
  # GET /barangay_bridge_project_completions/1.json
  def show
  end

  # GET /barangay_bridge_project_completions/new
  def new
    @barangay_bridge_project_completion = BarangayBridgeProjectCompletion.new
  end

  # GET /barangay_bridge_project_completions/1/edit
  def edit
  end

  # POST /barangay_bridge_project_completions
  # POST /barangay_bridge_project_completions.json
  def create
    @barangay_bridge_project_completion = BarangayBridgeProjectCompletion.new(barangay_bridge_project_completion_params)

    respond_to do |format|
      if @barangay_bridge_project_completion.save
        format.html { redirect_to @barangay_bridge_project_completion, notice: 'Barangay bridge project completion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_bridge_project_completion }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_bridge_project_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_bridge_project_completions/1
  # PATCH/PUT /barangay_bridge_project_completions/1.json
  def update
    respond_to do |format|
      if @barangay_bridge_project_completion.update(barangay_bridge_project_completion_params)
        format.html { redirect_to @barangay_bridge_project_completion, notice: 'Barangay bridge project completion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_bridge_project_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_bridge_project_completions/1
  # DELETE /barangay_bridge_project_completions/1.json
  def destroy
    @barangay_bridge_project_completion.destroy
    respond_to do |format|
      format.html { redirect_to barangay_bridge_project_completions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_bridge_project_completion
      @barangay_bridge_project_completion = BarangayBridgeProjectCompletion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_bridge_project_completion_params
      params.require(:barangay_bridge_project_completion).permit(:barangay_bridge_project_id, :tag, :name, :description, :date_confirmed, :user_id, :datetime_edited, :project_length_provided)
    end
end
