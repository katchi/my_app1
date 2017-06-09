class SearchController < ApplicationController 
	def index
		@codes = Code.where(where_condition("content"))
		@coders = Coder.where(where_condition("firstname"))
		@results = @codes + @coders
	end

	def where_condition(attribute)
		["#{attribute} ILIKE ?", "%#{params[:q]}%"]
	end

end	