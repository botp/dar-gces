class ArcsController < ApplicationController
  before_action :set_arc, only: [:show, :edit, :update, :destroy]

  # GET /arcs
  # GET /arcs.json
  def index
    @arcs = Arc.all
  end

  # GET /arcs/1
  # GET /arcs/1.json
  def show
  end

  # GET /arcs/new
  def new
    @arc = Arc.new
  end

  # GET /arcs/1/edit
  def edit
  end

  # POST /arcs
  # POST /arcs.json
  def create
    @arc = Arc.new(arc_params)

    respond_to do |format|
      if @arc.save
        format.html { redirect_to @arc, notice: 'Arc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @arc }
      else
        format.html { render action: 'new' }
        format.json { render json: @arc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arcs/1
  # PATCH/PUT /arcs/1.json
  def update
    respond_to do |format|
      if @arc.update(arc_params)
        format.html { redirect_to @arc, notice: 'Arc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @arc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arcs/1
  # DELETE /arcs/1.json
  def destroy
    @arc.destroy
    respond_to do |format|
      format.html { redirect_to arcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arc
      @arc = Arc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arc_params
      params.require(:arc).permit(:tag, :name, :description, :date_confirmed, :classification, :arc_profiled, :dev_plan_available, :dev_plan_mainstream, :alda_rating, :faps_coverage)
    end
end
