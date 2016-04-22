class Drink < ActiveRecord::Base

  belongs_to :bar
  has_and_belongs_to_many :tags
  has_many :reviews, as: :reviewable

end
