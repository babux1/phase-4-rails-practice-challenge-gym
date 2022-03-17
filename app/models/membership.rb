class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym
    validates :membership, length: {maximum: 1}
end
