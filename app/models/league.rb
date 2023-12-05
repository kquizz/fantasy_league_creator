class League < ApplicationRecord
  belongs_to :commissioner, class_name: 'User'
  belongs_to :event

  has_many :teams
  has_and_belongs_to_many :rules
end
