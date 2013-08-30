class BarangayTrainingsController < ApplicationController
  before_action :set_barangay_training, only: [:show, :edit, :update, :destroy]

  # GET /barangay_trainings
  # GET /barangay_trainings.json
  def index
    @barangay_trainings = BarangayTraining.all
  end

  # GET /barangay_trainings/1
  # GET /barangay_trainings/1.json
  def show
  end

  # GET /barangay_trainings/new
  def new
    @barangay_training = BarangayTraining.new
  end

  # GET /barangay_trainings/1/edit
  def edit
  end

  # POST /barangay_trainings
  # POST /barangay_trainings.json
  def create
    @barangay_training = BarangayTraining.new(barangay_training_params)

    respond_to do |format|
      if @barangay_training.save
        format.html { redirect_to @barangay_training, notice: 'Barangay training was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_training }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_trainings/1
  # PATCH/PUT /barangay_trainings/1.json
  def update
    respond_to do |format|
      if @barangay_training.update(barangay_training_params)
        format.html { redirect_to @barangay_training, notice: 'Barangay training was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_trainings/1
  # DELETE /barangay_trainings/1.json
  def destroy
    @barangay_training.destroy
    respond_to do |format|
      format.html { redirect_to barangay_trainings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_training
      @barangay_training = BarangayTraining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_training_params
      params.require(:barangay_training).permit(:tag, :barangay_id, :training_title, :description, :source_of_funds, :amount, :conducted_by, :date_conducted, :particpants_male_arb, :participants_male_non_arb, :participants_female_arb, :participants_female_non_arb)
    end
end
