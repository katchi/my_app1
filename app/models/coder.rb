class Coder < ApplicationRecord
	has_many :codes

	def self.by_keyword(attribute, keyword)
		where("#{attribute} ILIKE ?", "%#{keyword}%")
	end
end
