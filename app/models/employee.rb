class Employee < ApplicationRecord
  belongs_to :buisness_unit
  has_and_belongs_to_many :skills
end
