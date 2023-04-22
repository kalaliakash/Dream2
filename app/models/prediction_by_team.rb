class PredictionByTeam < ApplicationRecord
	belongs_to :user_contest_prediction,optional: true
	belongs_to :match
end
