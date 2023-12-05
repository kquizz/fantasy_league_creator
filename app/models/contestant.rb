class Contestant < ApplicationRecord
  has_one_attached :image
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_id'
  has_and_belongs_to_many :divisions

  has_many :event_contestants
  has_many :events, through: :event_contestants

  has_and_belongs_to_many :teams
end
