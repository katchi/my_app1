class Code < ApplicationRecord
	belongs_to :coder

	def self.by_keyword(attribute, keyword)
		where("#{attribute} ILIKE ?", "%#{keyword}%")	
	end
end
