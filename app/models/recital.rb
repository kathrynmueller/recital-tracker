class Recital < ApplicationRecord

	# associations
	belongs_to :semester

	has_many :user_recitals
  has_many :users, through: :user_recitals

end
