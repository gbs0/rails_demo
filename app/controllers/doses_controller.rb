class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update]
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
		@dose = Dose.find(params[:dose_id])
  end
end

# private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_dose
#       @dose = Dose.find(params[:dose_id])
#       p @dose
#     end



    # Never trust parameters from the scary internet, only allow the white list through.
    # def dose_params
    #   params.require(:dose).permit(:name)
    # end
# end
