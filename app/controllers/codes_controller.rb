class CodesController < ApplicationController

  before_action :set_code, only: [:destroy, :edit, :update]

  def index
  	@codes = Code.all
  end

  def destroy
 	@code.destroy
  redirect_to_index
  end

  def new
  	@code = Code.new
  end

  def create
  	@code = Code.new(code_params)
  	@code.save
    redirect_to_index
  end

  def edit
  end

  def update
  	@code = @code.update(code_params)
    redirect_to_index
  end

  protected

  def set_code
    @code = Code.find(params[:id])
  end

  def redirect_to_index
    redirect_to codes_path
  end

  def code_params
    params.require(:code).permit(:coder_id, :content, :language)
  end

end