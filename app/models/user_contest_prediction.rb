class UserContestPrediction < ApplicationRecord
	belongs_to :user_contest
	belongs_to :predictable, polymorphic:  true 
	has_one :prediction_by_team
end
