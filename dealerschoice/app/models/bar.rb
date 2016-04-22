class Bar < ActiveRecord::Base
  has_many :drinks
  has_many :reviews, as: :reviewable
end
