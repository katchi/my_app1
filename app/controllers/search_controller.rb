class SearchController < ApplicationController 
	def index
		@codes = Code.where("content ILIKE ?", "%#{params[:q]}%")
		@coders = Coder.where("firstname ILIKE ?", "%#{params[:q]}%")
	end
end	