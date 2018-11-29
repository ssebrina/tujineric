class House < ApplicationRecord
	validates :price, presence: true
	validates :property_type, presence:true
end
