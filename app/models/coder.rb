class Coder < ApplicationRecord
	has_many :codes

	scope :by_keyword, -> (attribute, keyword) { where("#{attribute} ILIKE ?", "%#{keyword}%") } 

end
