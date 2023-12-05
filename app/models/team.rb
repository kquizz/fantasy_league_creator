class Team < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :league

  has_and_belongs_to_many :contestants
end
