class SearchController < ApplicationController 
	def index
		@codes = Code.where("content LIKE ?", "%#{params[:q]}%")
		@coders = Coder.where("firstname LIKE ?", "%#{params[:q]}%")
	end
end	