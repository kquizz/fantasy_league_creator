class League < ApplicationRecord
  belongs_to :commissioner, class_name: 'User'
  belongs_to :event
end
