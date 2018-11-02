class DosesController < ApplicationController


private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose
      @dose = Dose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def dose_params
    #   params.require(:dose).permit(:name)
    # end
end
