class BarangayPoliticalsController < ApplicationController
  before_action :set_barangay_political, only: [:show, :edit, :update, :destroy]

  # GET /barangay_politicals
  # GET /barangay_politicals.json
  def index
    @barangay_politicals = BarangayPolitical.all
  end

  # GET /barangay_politicals/1
  # GET /barangay_politicals/1.json
  def show
  end

  # GET /barangay_politicals/new
  def new
    @barangay_political = BarangayPolitical.new
  end

  # GET /barangay_politicals/1/edit
  def edit
  end

  # POST /barangay_politicals
  # POST /barangay_politicals.json
  def create
    @barangay_political = BarangayPolitical.new(barangay_political_params)

    respond_to do |format|
      if @barangay_political.save
        format.html { redirect_to @barangay_political, notice: 'Barangay political was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_political }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_political.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_politicals/1
  # PATCH/PUT /barangay_politicals/1.json
  def update
    respond_to do |format|
      if @barangay_political.update(barangay_political_params)
        format.html { redirect_to @barangay_political, notice: 'Barangay political was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_political.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_politicals/1
  # DELETE /barangay_politicals/1.json
  def destroy
    @barangay_political.destroy
    respond_to do |format|
      format.html { redirect_to barangay_politicals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_political
      @barangay_political = BarangayPolitical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_political_params
      params.require(:barangay_political).permit(:tag, :barangay_id, :name, :description, :date_info_gathered, :barangay_chairman, :barc_chairman)
    end
end
