class Contestant < ApplicationRecord
  has_one_attached :image
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_id'

  has_many :event_contestants
  has_many :events, through: :event_contestants
end
