class User < ApplicationRecord
	has_many :user_contests
	has_many :contests , through: :user_contests
end
