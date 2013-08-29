class ArcBarangaysController < ApplicationController
  before_action :set_arc_barangay, only: [:show, :edit, :update, :destroy]

  # GET /arc_barangays
  # GET /arc_barangays.json
  def index
    @arc_barangays = ArcBarangay.all
  end

  # GET /arc_barangays/1
  # GET /arc_barangays/1.json
  def show
  end

  # GET /arc_barangays/new
  def new
    @arc_barangay = ArcBarangay.new
  end

  # GET /arc_barangays/1/edit
  def edit
  end

  # POST /arc_barangays
  # POST /arc_barangays.json
  def create
    @arc_barangay = ArcBarangay.new(arc_barangay_params)

    respond_to do |format|
      if @arc_barangay.save
        format.html { redirect_to @arc_barangay, notice: 'Arc barangay was successfully created.' }
        format.json { render action: 'show', status: :created, location: @arc_barangay }
      else
        format.html { render action: 'new' }
        format.json { render json: @arc_barangay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arc_barangays/1
  # PATCH/PUT /arc_barangays/1.json
  def update
    respond_to do |format|
      if @arc_barangay.update(arc_barangay_params)
        format.html { redirect_to @arc_barangay, notice: 'Arc barangay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @arc_barangay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arc_barangays/1
  # DELETE /arc_barangays/1.json
  def destroy
    @arc_barangay.destroy
    respond_to do |format|
      format.html { redirect_to arc_barangays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arc_barangay
      @arc_barangay = ArcBarangay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arc_barangay_params
      params.require(:arc_barangay).permit(:arc_id, :barangay_id, :tag, :name, :description, :date_confirmed)
    end
end
