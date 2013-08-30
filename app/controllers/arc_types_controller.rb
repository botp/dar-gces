class ArcTypesController < ApplicationController
  before_action :set_arc_type, only: [:show, :edit, :update, :destroy]

  # GET /arc_types
  # GET /arc_types.json
  def index
    @arc_types = ArcType.all
  end

  # GET /arc_types/1
  # GET /arc_types/1.json
  def show
  end

  # GET /arc_types/new
  def new
    @arc_type = ArcType.new
  end

  # GET /arc_types/1/edit
  def edit
  end

  # POST /arc_types
  # POST /arc_types.json
  def create
    @arc_type = ArcType.new(arc_type_params)

    respond_to do |format|
      if @arc_type.save
        format.html { redirect_to @arc_type, notice: 'Arc type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @arc_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @arc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arc_types/1
  # PATCH/PUT /arc_types/1.json
  def update
    respond_to do |format|
      if @arc_type.update(arc_type_params)
        format.html { redirect_to @arc_type, notice: 'Arc type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @arc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arc_types/1
  # DELETE /arc_types/1.json
  def destroy
    @arc_type.destroy
    respond_to do |format|
      format.html { redirect_to arc_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arc_type
      @arc_type = ArcType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arc_type_params
      params.require(:arc_type).permit(:name, :description)
    end
end
