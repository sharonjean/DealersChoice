class Tag < ActiveRecord::Base
  has_and_belongs_to_many :drinks

  has_many :child_families, class_name: "Family", foreign_key: :parent_id
  has_many :children, through: :child_families, source: :child

  has_many :parent_families, class_name: "Family", foreign_key: :child_id
  has_many :parents, through: :parent_families, source: :parent
end
