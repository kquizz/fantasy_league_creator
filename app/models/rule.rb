class Rule < ApplicationRecord
  belongs_to :created_by , class_name: 'User'
  has_and_belongs_to_many :leagues
end
