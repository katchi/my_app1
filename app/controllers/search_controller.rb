class SearchController < ApplicationController 
	def index
		@codes = Code.by_keyword("content", params[:q])
		@coders = Coder.by_keyword("firstname", params[:q])
		@results = @codes + @coders
	end

end	