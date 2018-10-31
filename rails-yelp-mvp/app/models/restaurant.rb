class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy
	validates :name, presence: true, allow_blank: false
	validates :address, presence: true, allow_blank: false
	validates :category, presence: true, inclusion: { in: %w(chinese
	  italian
		japanese
		french
		belgian),
    message: "%{value} is not a valid size" }
end
