class SearchController < ApplicationController 
	def index
		@codes = Code.by_keyword("content", params[:q]).order_by("updated_at")
		@coders = Coder.by_keyword("firstname", params[:q])
		@results = @codes + @coders
	end

end	