class CodesController < ApplicationController
  def index
  	@codes = Code.all
  end

  def destroy
  	@code = Code.find(params[:id])
 	@code.destroy
 	redirect_to codes_path
  end

  def new
  	@code = Code.new
  end

  def create
  	@code = Code.new(coder_id: params[:code][:coder_id], content: params[:code][:content], language: params[:code][:language])
  	@code.save
  	redirect_to codes_path
  end

  def edit
  	@code = Code.find(params[:id])
  end

  def update
  	@code = Code.update(content: params[:code][:content], language: params[:code][:language])
  	redirect_to codes_path
  end

end