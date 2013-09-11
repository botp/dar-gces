class ReporterBarangayController < ApplicationController
  def index
    @barangays=Barangay.all  
   end


  def show
    if params[:search]
      @barangays = Barangay.search(params[:search])
    else
      redirect_to action: 'index'
    end
  end

end
