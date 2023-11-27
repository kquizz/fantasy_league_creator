class Event < ApplicationRecord
  has_one_attached :banner
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_id'
end
