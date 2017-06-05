class CodesController < ApplicationController
  def index
  	@codes = Code.all
  end

  def destroy
  	@code = Code.find(params[:id])
 	@code.destroy
 	redirect_to codes_path
  end
end