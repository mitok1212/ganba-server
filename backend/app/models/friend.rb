class Friend < ApplicationRecord
  belongs_to :user, foreign_key: 'friendme'
  has_many :reactions
end
