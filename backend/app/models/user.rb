class User < ApplicationRecord
  has_many :friends, foreign_key: 'friendme'
end
