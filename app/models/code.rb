class Code < ApplicationRecord
	belongs_to :coder

	scope :by_keyword, -> (attribute, keyword) { where("#{attribute} ILIKE ?", "%#{keyword}%") } 

	scope :order_by, -> (order) { order("#{order}") }
end
