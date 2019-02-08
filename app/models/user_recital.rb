class UserRecital < ApplicationRecord

	# associations
	belongs_to :user
	belongs_to :recital

end
