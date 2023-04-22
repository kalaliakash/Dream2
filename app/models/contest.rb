class Contest < ApplicationRecord
has_many :user_contests
has_many :users , through: :user_contests
has_one :payment
belongs_to :match

end
