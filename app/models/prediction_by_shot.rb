class PredictionByShot < ApplicationRecord
	has_one :user_contest_prediction,:as => :predictable
	belongs_to :match_point
end
