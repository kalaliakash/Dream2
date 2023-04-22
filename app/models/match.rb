class Match < ApplicationRecord
	has_many :contests
	has_many :match_points
end
