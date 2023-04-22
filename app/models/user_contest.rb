class UserContest < ApplicationRecord
	belongs_to :user
  belongs_to :contest
	has_many :user_contest_predictions
end
